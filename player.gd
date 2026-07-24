extends CharacterBody3D

#interact with objects
signal interact_object
@onready var ray_cast_3d: RayCast3D = $Head/Camera3D/RayCast3D
@onready var place_ray_cast: RayCast3D = $Head/Camera3D/PlaceRayCast
@onready var hand_marker: Marker3D = %HandMarker
@onready var sponge_marker: Marker3D = %SpongeMarker
var pickedObject
var offhandObject #the sponge
@onready var pick_up_sound: AudioStreamPlayer3D = $PickUpSound


#stuff for 1st person pov basic controls
@export var mouse_sensitivity := 0.003
@onready var head: Node3D = $Head
@export var speed := 3.0
@export var jump_velocity := 4.5
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

#throwing
@export var throw_force := 8.0
@export var throw_upward_boost := 1.5

#for the scrub animation
var scrubbing := false
var scrub_progress := 0.0
var scrub_radius := 0.3
var scrub_speed := 6.0
@onready var scrub_marker: Marker3D = $Head/Camera3D/ScrubMarker
@export var dirt_removed_per_scrub := 0.35
var scrub_held := false
@onready var scrubbing_sound: AudioStreamPlayer3D = $ScrubbingSound

# for the glitches
var glitch_offset := Vector3.ZERO
var is_glitched := false
var glitch_check_timer := 0.0
var glitch_recover_timer := 0.0
@export var glitch_check_interval := 3.0   # how often we re-roll while NOT glitched
@export var glitch_min_radius := 0.8       # must be > scrub_radius (0.3)
@export var glitch_max_radius := 1.4
@export var glitch_recover_min := 2.0      # seconds before auto-reset
@export var glitch_recover_max := 6.0
@export var world: PackedScene
@onready var color_rect: ColorRect = $"../CanvasLayer/ColorRect"

func _ready() -> void:
	add_to_group("player")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	color_rect.color.a = 0.0

func _process(delta):
	# selection raycast
	interact_object.emit(ray_cast_3d.get_collider() if ray_cast_3d.is_colliding() else null)

	# keep held objects glued to their markers every frame
	if pickedObject:
		pickedObject.global_transform = hand_marker.global_transform.translated_local(glitch_offset)

#animates the scrub animation
	if offhandObject:
		if scrubbing:
			scrub_progress += scrub_speed * delta
			var offset = Vector3(-cos(scrub_progress), 0, sin(scrub_progress)) * scrub_radius
			#offset = offset.rotated(Vector3.RIGHT, deg_to_rad(45))
			offhandObject.global_transform = scrub_marker.global_transform.translated_local(offset)
			if scrub_progress >= TAU:
				scrubbing = false
				scrubbing_sound.stop()
				scrub_progress = 0.0
				if pickedObject and pickedObject.has_method("reduce_dirt"):
						pickedObject.reduce_dirt(dirt_removed_per_scrub)
		else:
			offhandObject.global_transform = sponge_marker.global_transform
			
####------------------INPUTS-------------------------------------###

func _input(event: InputEvent) -> void:
	#looking around
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
		head.rotate_x(-event.relative.y * mouse_sensitivity)
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-65), deg_to_rad(65))

	#releases mouse for testing purposes
	if event.is_action_pressed("cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

	#makes the pick up action happen?
	if event.is_action_pressed('interact'):
		if pickedObject:
			_place_object(pickedObject)
			pickedObject = null
		elif ray_cast_3d.is_colliding():
			pick_up_object(ray_cast_3d.get_collider())

	#initiates scrubbing animation for the scrub click
	if event.is_action_pressed('scrub') and offhandObject and not scrubbing:
		scrubbing = true
		scrubbing_sound.play()
		scrub_progress = 0.0
		scrub_held = true
	if event.is_action_released('scrub'):
		scrub_held = false
	
	if event.is_action_pressed('throw') and pickedObject:
		_throw_object(pickedObject)
		pickedObject = null
	
func _physics_process(delta: float) -> void:
	#basic gravity for jumping and falling
	if not is_on_floor():
		velocity.y -= gravity * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
	var input_dir := Input.get_vector("left", "right", "forward", "back")
	#makes the player walk the direction the camera is facing
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)
	move_and_slide()
	
	if pickedObject:
		#if is_glitched is true, starts timer until reset
		if is_glitched:
			glitch_recover_timer -= delta
			if glitch_recover_timer <= 0.0:
				_reset_glitch()
	#if is_glitched is false, rolls to apply glitch
		else:
			glitch_check_timer += delta
			if glitch_check_timer >= glitch_check_interval:
				glitch_check_timer = 0.0
				_roll_glitch()
		
######-----------------------INTERACTION FUNCTIONS---------------####

func pick_up_object(object):
	pick_up_sound.play()
	#sponge vs plate pickup mechanics! makes the physics not glitch out (in the wrong ways!)
	if object.is_in_group('sponge'):
		if offhandObject:
			return
		object.freeze_mode = RigidBody3D.FREEZE_MODE_KINEMATIC
		object.freeze = true
		object.collision_shape_3d.disabled = true
		offhandObject = object
	elif object.is_in_group('dish'):
		if pickedObject:
			return
		object.freeze_mode = RigidBody3D.FREEZE_MODE_KINEMATIC
		object.freeze = true
		object.collision_shape_3d.disabled = true
		pickedObject = object
	else:
		return

func _throw_object(object) -> void:
	object.collision_shape_3d.disabled = false
	object.freeze = false

	# throw in the direction the camera is facing, with a slight upward arc
	var throw_direction = -head.get_node("Camera3D").global_transform.basis.z
	throw_direction.y += throw_upward_boost * 0.1  # nudge trajectory upward
	throw_direction = throw_direction.normalized()

	object.linear_velocity = throw_direction * throw_force

func _place_object(object) -> void:
	object.collision_shape_3d.disabled = false
	
	if place_ray_cast.is_colliding():
		var hit_point = place_ray_cast.get_collision_point()
		var hit_normal = place_ray_cast.get_collision_normal()
		# lift it slightly off the surface so it doesn't clip into it
		object.global_position = hit_point + hit_normal * 0.05
	else:
		# fallback: just drop it a bit in front if the ray finds nothing
		object.global_position = place_ray_cast.global_position
	
	object.freeze = false
	
func _drop_object() -> void:
	if not pickedObject:
		return
	pickedObject.collision_shape_3d.disabled = false
	pickedObject.freeze = false
	pickedObject = null
	
func _drop_sponge() -> void:
	if not offhandObject:
		return
	offhandObject.collision_shape_3d.disabled = false
	offhandObject.freeze = false
	offhandObject = null
	
#####--------------GLITCH INPUTS AND CHANCE----------######
#random float generation for weighted chance
func _roll_glitch() -> void:
	var random_float = randf()

	if random_float < 0.05:
		world._spawn_new_plates()
	elif random_float < 0.5:
		_start_glitch(glitch_min_radius, glitch_min_radius + 0.2)
	elif random_float < 0.8:
		_start_glitch(glitch_min_radius + 0.2, glitch_max_radius)
	elif random_float < 0.90:
		_blackout_and_drop()
	elif random_float < 0.95:
		pass
	else:
		_throw_object(pickedObject)
		pickedObject = null
		

#defines the glitch offset
func _start_glitch(min_r: float, max_r: float) -> void:
	var angle := randf() * TAU
	var radius := randf_range(min_r, max_r)
	glitch_offset = Vector3(cos(angle), 0, sin(angle)) * radius
	is_glitched = true
	glitch_recover_timer = randf_range(glitch_recover_min, glitch_recover_max)

func _reset_glitch() -> void:
	glitch_offset = Vector3.ZERO
	is_glitched = false
	glitch_check_timer = 0.0
	glitch_recover_timer = 0.0

func _blackout_and_drop() -> void:
	if not pickedObject:
		return

	color_rect.color.a = 1.0
	_drop_object()
	_drop_sponge()

	await get_tree().create_timer(0.4).timeout
	color_rect.color.a = 0.0
