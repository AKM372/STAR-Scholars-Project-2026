extends StaticBody3D


var camera: Camera3D
@onready var door_mesh: MeshInstance3D = $DoorMesh
@onready var door_collision: CollisionShape3D = $DoorCollision

@export var check_interval: float = 3
@export var disappear_chance: float = 0.3
@export var reappear_chance: float = 0.3

var door_visible := true
var timer := 0.0

func _ready() -> void:
	camera = get_tree().get_first_node_in_group("player_camera")
	
func _process(delta: float) -> void:
	timer += delta
	if timer >= check_interval:
		timer = 0.0
		if not _player_is_looking():
			_maybe_toggle_door()

func _player_is_looking() -> bool:
	if camera == null:
		return false

	# in front of camera?
	var to_door = global_position - camera.global_position
	if to_door.dot(-camera.global_transform.basis.z) <= 0:
		return false

	# inside viewport bounds?
	var screen_pos = camera.unproject_position(global_position)
	var vp_size = camera.get_viewport().get_visible_rect().size
	if screen_pos.x < 0 or screen_pos.x > vp_size.x or screen_pos.y < 0 or screen_pos.y > vp_size.y:
		return false

	# not blocked by a wall in between?
	var space_state = get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.create(camera.global_position, global_position)
	query.exclude = [camera.get_parent()]  # skip the player's own body
	var result = space_state.intersect_ray(query)
	return result and result.collider == self

func _maybe_toggle_door() -> void:
	var roll = randf()
	if door_visible and roll < disappear_chance:
		_set_door_visability(false)
	elif not door_visible and roll < reappear_chance:
		_set_door_visability(true)

func _set_door_visability(value: bool) -> void:
	door_visible = value
	door_mesh.visible = value
	door_collision.disabled = not value
