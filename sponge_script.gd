extends RigidBody3D
@onready var sponge: RigidBody3D = $"."
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/MeshInstance3D
var selected = false
var outlineWidth = 0.05
var player
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

func _ready():
	player = get_tree().get_first_node_in_group("player")
	#connects raycast to selection outline
	if player:
		player.interact_object.connect(_set_selected)
	outlineMesh.visible = false
	
#enables the selection to select
func _set_selected(object):
	selected = self == object

func _process(delta):
	var held = (player.offhandObject == self)
	
	outlineMesh.visible = selected and not held
	
	if held:
		return
	if selected:
		outlineMesh.position.y = outlineWidth
	else:
		outlineMesh.position.y = 0
