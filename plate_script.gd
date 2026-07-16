extends RigidBody3D
@onready var plate: RigidBody3D = $"."
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/outlineMesh
var selected = false
var outlineWidth = 0.05
var player
var sponge
var sponge_touching
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

@onready var DirtSprite: Sprite3D = $Dirt/DirtSprite
@onready var DirtCollision: CollisionShape3D = $Dirt/Area3D/DirtCollision


func _ready():
	#connects raycast to selection
	player = get_tree().get_first_node_in_group("player")
	if player:
		player.interact_object.connect(_set_selected)
	outlineMesh.visible = false
	
func _set_selected(object):
	selected = self == object

func _process(_delta):
	#checks to see if the plate is being held
	var held = (player.pickedObject == self)
	
	#makes outline not visible when raycast is hitting the plate and it's not held
	outlineMesh.visible = selected and not held
	collision_shape_3d.disabled = held
	
	if sponge_touching and player.scrubbing and DirtSprite.visible:
		var random_float = randf()
	
		if random_float < 0.5:
			print('cleaning the dirt')
			DirtSprite.visible = false
			DirtCollision.disabled = true
		else:
			print('ha')
	
	if held:
		return
	if selected:
		plate.position.y = outlineWidth
	else:
		plate.position.y = 0
	

#makes the dirt dissapear on sponge interaction!!
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = true

func _on_area_3d_area_exited(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = false
