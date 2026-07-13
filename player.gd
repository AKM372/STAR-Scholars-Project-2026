extends CharacterBody3D

#for picking up objects!
signal interact_object
@onready var ray_cast_3d: RayCast3D = $Head/Camera3D/RayCast3D
@onready var hand_marker: Marker3D = %HandMarker
var pickedObject
var offhandObject #this is the sponge

#for lookin and movin around
@export var mouse_sensitivity := 0.003
@onready var head: Node3D = $Head
@export var speed := 3.0
@export var jump_velocity := 4.5
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var base_speed := 5.0

#for the scrubbing
var scrubbing := false
var scrub_progress := 0.0
var scrub_radius := 0.3
var scrub_speed := 6.0  # radians per second, controls how fast the circle completes
var scrub_base_position: Vector3
@onready var scrub_marker: Marker3D = $Head/Camera3D/ScrubMarker
var scrub_home_position: Vector3  # where the sponge returns to (the hand/sponge marker spot)

func _ready() -> void:
	add_to_group("player")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta):
	if ray_cast_3d.is_colliding():
		var collider = ray_cast_3d.get_collider()
		interact_object.emit(collider)
	else: interact_object.emit(null)
	
	if scrubbing:
		scrub_progress += scrub_speed * delta
		var offset = Vector3(cos(scrub_progress), 0, sin(scrub_progress)) * scrub_radius
		offhandObject.position = scrub_base_position + offset
		
		if scrub_progress >= TAU:  # TAU = 2 * PI, one full circle done
			scrubbing = false
			offhandObject.position = scrub_home_position  # snap back to exact start

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		# Yaw: rotate the whole body left/right
		rotate_y(-event.relative.x * mouse_sensitivity)
		# Pitch: rotate the head up/down, clamped so you can't flip over
		head.rotate_x(-event.relative.y * mouse_sensitivity)
		head.rotation.x = clamp(head.rotation.x, deg_to_rad(-65), deg_to_rad(65))

	# Free the cursor for testing
	if event.is_action_pressed("cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
	#pick up objects
	
	if event.is_action_pressed('interact') and pickedObject:
		pickedObject.freeze = false
		pickedObject.reparent(get_tree().current_scene)
		pickedObject = null
	
	#scrub them dishes
	if event.is_action_pressed('scrub') and offhandObject and not scrubbing:
		scrubbing = true
		scrub_progress = 0.0
		scrub_home_position = offhandObject.position
		scrub_base_position = to_local(scrub_marker.global_position)
		offhandObject.position = scrub_base_position
		
func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	# Direction relative to where we're facing
	var input_dir := Input.get_vector("left", "right", "forward", "back")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)

	move_and_slide()
	

func pick_up_object(object):
	print("picked up object named: '", object.name, "'")
	if object.is_in_group('sponge'):
		if offhandObject:
			return
		object.reparent(self)
		object.freeze = true
		object.global_position = %SpongeMarker.global_position
		object.rotation = Vector3(0,90,0)
		offhandObject = object
	else:
		if pickedObject:
			return 
		object.reparent(self)
		object.freeze = true
		await get_tree().create_timer(0.1).timeout
		object.global_position = %HandMarker.global_position
		pickedObject = object
