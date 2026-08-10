extends StaticBody3D

@export var door_mesh: MeshInstance3D
@export var door_collision: CollisionShape3D

#makes the door dissapear after 5 minutes of play time
func _ready() -> void:
	await get_tree().create_timer(300).timeout
	door_mesh.visible = false
	
func _process(_delta: float) -> void:
	pass
"volume_db"
