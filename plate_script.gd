extends RigidBody3D
@onready var plate: RigidBody3D = $"."
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/outlineMesh
var selected = false
var outlineWidth = 0.05
var player
var sponge
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

@onready var DirtSprite: Sprite3D = $Dirt/DirtSprite
@onready var DirtCollision: CollisionShape3D = $Dirt/Area3D/DirtCollision

#func _input(event: InputEvent) -> void:
	#if event.is_action_pressed('interact') and selected:
		#player.pick_up_object(self)

func _ready():
	player = get_tree().get_first_node_in_group("player")
	if player:
		player.interact_object.connect(_set_selected)
	else:
		print('not connected')
	outlineMesh.visible = false
	
	#sponge = get_tree().get_first_node_in_group("sponge")
	#sponge.cleaned.connect()
	
func _set_selected(object):
	selected = self == object

func _process(_delta):
	var held = (player.pickedObject == self)
		
	outlineMesh.visible = selected and not held
	collision_shape_3d.disabled = held
	
	if held:
		return
		
	if selected:
		plate.position.y = outlineWidth
	else:
		plate.position.y = 0
		
		

func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group('sponge') and player.scrubbing:
		print('cleaning the dirt')
		#cleaned.emit()
		DirtSprite.visible = false
		DirtCollision.disabled = true
