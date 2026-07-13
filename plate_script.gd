extends RigidBody3D
@onready var plate: RigidBody3D = $"."
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/outlineMesh
var selected = false
var outlineWidth = 0.05
var player
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed('interact') and selected:
		player.pick_up_object(self)

func _ready():
	player = get_tree().get_first_node_in_group("player")
	if player:
		player.interact_object.connect(_set_selected)
	else:
		print('not connected')
	outlineMesh.visible = false

func _set_selected(object):
	selected = self == object

func _process(delta):
	outlineMesh.visible = selected
	collision_shape_3d.disabled = player == get_parent()
	
	if selected:
		plate.position.y = outlineWidth
	else:
		plate.position.y = 0
		
func clean():
	pass
