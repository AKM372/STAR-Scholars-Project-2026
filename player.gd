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
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

#throwing
@export var throw_force := 8.0
@export var throw_upward_boost := 1.5
@export var fling_speed_threshold := 1500.0   # tune this — mouse pixels/sec to count as a "fling"
@export var fling_max_speed := 4000.0          # speed at which throw force maxes out
var mouse_delta_accum := Vector2.ZERO
var mouse_fling_speed := 0.0

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
@export var world: Node3D
@onready var glitch_rect: ColorRect = $"../CanvasLayer/GlitchScreen"

func _ready() -> void:
	add_to_group("player")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta):
	# selection raycast
	interact_object.emit(ray_cast_3d.get_collider() if ray_cast_3d.is_colliding() else null)
	
	# track mouse fling speed (smoothed so single-frame noise doesn't false-trigger)
	var instant_speed = mouse_delta_accum.length() / delta
	mouse_fling_speed = lerp(mouse_fling_speed, instant_speed, 0.5)
	mouse_delta_accum = Vector2.ZERO
	
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
		mouse_delta_accum += event.relative
		
	#releases mouse for testing purposes
	if event.is_action_pressed("cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

	#makes the pick up action happen?
	if event.is_action_pressed('interact'):
		if ray_cast_3d.is_colliding():
			pick_up_object(ray_cast_3d.get_collider())
		else:
			return
	
	if event.is_action_released('interact'):
		if pickedObject:
			if mouse_fling_speed > fling_speed_threshold:
				_throw_object(pickedObject, mouse_fling_speed)
			else:
				_place_object(pickedObject)
			pickedObject = null
	
	
	
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
		
	if event.is_action_pressed('testing'):
		_blackout_and_drop()
		print('testing')
	
func _physics_process(delta: float) -> void:
	#basic gravity for jumping and falling
	if not is_on_floor():
		velocity.y -= gravity * delta
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

func _throw_object(object, fling_speed: float = -1.0) -> void:
	object.collision_shape_3d.disabled = false
	object.freeze = false

	# throw in the direction the camera is facing, with a slight upward arc
	var throw_direction = -head.get_node("Camera3D").global_transform.basis.z
	throw_direction.y += throw_upward_boost * 0.1
	throw_direction = throw_direction.normalized()

	var force = throw_force
	if fling_speed > 0.0:
		var t = clamp(fling_speed / fling_max_speed, 0.0, 1.0)
		force = lerp(throw_force, throw_force * 2.5, t)  # tune the multiplier to taste

	object.linear_velocity = throw_direction * force
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

	if random_float < 0.55:
		# small glitch offset — most common outcome
		_start_glitch(glitch_min_radius, glitch_min_radius + 0.2)
	elif random_float < 0.75:
		# bigger glitch offset — still fairly common
		_start_glitch(glitch_min_radius + 0.2, glitch_max_radius)
	elif random_float < 0.85:
		world.play_random_sfx()
	elif random_float < 0.92:
		# blackout + drop — disruptive, less frequent
		_blackout_and_drop()
	elif random_float < 0.97:
		# throw — disruptive, rare
		if pickedObject:
			_throw_object(pickedObject)
			pickedObject = null
	else:
		# plate rain — rarest, most disruptive
		world._plate_rain()

	# randomize the wait until the next roll, so glitches feel irregular
	glitch_check_interval = randf_range(1.5, 6.0)

#defines the glitch offset
func _start_glitch(min_r: float, max_r: float) -> void:
	var angle := randf() * TAU
	var radius := randf_range(min_r, max_r)
	var target_offset = Vector3(cos(angle), 0, sin(angle)) * radius

	is_glitched = true
	glitch_recover_timer = randf_range(glitch_recover_min, glitch_recover_max)

	var tween = create_tween()
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.set_trans(Tween.TRANS_SINE)
	tween.tween_property(self, "glitch_offset", target_offset, 0.6)
	
func _reset_glitch() -> void:
	glitch_offset = Vector3.ZERO
	is_glitched = false
	glitch_check_timer = 0.0
	glitch_recover_timer = 0.0

func _blackout_and_drop() -> void:
	if not pickedObject:
		return
	# hard snap to full glitch
	glitch_rect.material.set_shader_parameter("intensity", 1.0)
	_drop_object()
	_drop_sponge()
	# dampen sound instantly
	var bus_idx = AudioServer.get_bus_index("Master")
	var original_volume = AudioServer.get_bus_volume_db(bus_idx)
	AudioServer.set_bus_volume_db(bus_idx, original_volume + -24)

	var blackout_fade_time = 0.7
	var tween = create_tween()
	tween.tween_interval(0.4)
	tween.set_parallel(true)
	tween.tween_property(glitch_rect.material, "shader_parameter/intensity", 0.0, blackout_fade_time)
	tween.tween_method(
		func(db): AudioServer.set_bus_volume_db(bus_idx, db),
		original_volume + -24,
		original_volume,
		blackout_fade_time)
