extends CharacterBody3D
signal interact_object
@onready var ray_cast_3d: RayCast3D = $Head/Camera3D/RayCast3D
@onready var hand_marker: Marker3D = %HandMarker
@onready var sponge_marker: Marker3D = %SpongeMarker
var pickedObject
var offhandObject #the sponge

#stuff for 1st person pov basic controls
@export var mouse_sensitivity := 0.003
@onready var head: Node3D = $Head
@export var speed := 3.0
@export var jump_velocity := 4.5
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

#for the scrub animation
var scrubbing := false
var scrub_progress := 0.0
var scrub_radius := 0.3
var scrub_speed := 6.0
@onready var scrub_marker: Marker3D = $Head/Camera3D/ScrubMarker

func _ready() -> void:
	add_to_group("player")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta):
	# selection raycast
	interact_object.emit(ray_cast_3d.get_collider() if ray_cast_3d.is_colliding() else null)

	# keep held objects glued to their markers every frame
	if pickedObject:
		pickedObject.global_transform = hand_marker.global_transform

#animates the scrub animation
	if offhandObject:
		if scrubbing:
			scrub_progress += scrub_speed * delta
			var offset = Vector3(cos(scrub_progress), 0, sin(scrub_progress)) * scrub_radius
			offhandObject.global_transform = scrub_marker.global_transform.translated_local(offset)
			if scrub_progress >= TAU:
				scrubbing = false
		else:
			offhandObject.global_transform = sponge_marker.global_transform

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
			pickedObject.collision_shape_3d.disabled = false
			pickedObject.freeze = false
			pickedObject = null
		elif ray_cast_3d.is_colliding():
			pick_up_object(ray_cast_3d.get_collider())

	#initiates scrubbing animation for the scrub click
	if event.is_action_pressed('scrub') and offhandObject and not scrubbing:
		scrubbing = true
		scrub_progress = 0.0

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

func pick_up_object(object):
	#sponge vs plate pickup mechanics! makes the physics not glitch out (in the wrong ways!)
	if object.is_in_group('sponge'):
		if offhandObject:
			return
		object.freeze_mode = RigidBody3D.FREEZE_MODE_KINEMATIC
		object.freeze = true
		object.collision_shape_3d.disabled = true
		offhandObject = object
	else:
		if pickedObject:
			return
		object.freeze_mode = RigidBody3D.FREEZE_MODE_KINEMATIC
		object.freeze = true
		object.collision_shape_3d.disabled = true
		pickedObject = object
