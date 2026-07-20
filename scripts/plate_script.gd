extends RigidBody3D
@onready var plate: RigidBody3D = $"."

#selection variables
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/outlineMesh
var selected = false
var outlineWidth = 0.05

#for scrubbing
var player
var sponge
var sponge_touching
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D
@onready var DirtSprite: Sprite3D = $Dirt/DirtSprite
@onready var DirtCollision: CollisionShape3D = $Dirt/Area3D/DirtCollision

#for dirt fade
var dirt_amount := 1.0       # actual cleanliness state, drops in discrete steps
var displayed_dirt := 1.0    # what's shown, eases toward dirt_amount
@export var fade_speed := 8.0

#sfx
@onready var drop_sound: AudioStreamPlayer3D = $DropSound

func _ready():
	print(get_tree_string_pretty())
	body_entered.connect(_on_body_entered)
	#connects raycast to selection
	player = get_tree().get_first_node_in_group("player")
	if player:
		player.interact_object.connect(_set_selected)
	outlineMesh.visible = false
	
func _set_selected(object):
	selected = self == object

func _process(delta):
	#checks to see if the plate is being held
	var held = (player.pickedObject == self)
	
	#makes outline not visible when raycast is hitting the plate and it's not held
	outlineMesh.visible = selected and not held
	collision_shape_3d.disabled = held
	
			
	if displayed_dirt != dirt_amount and DirtSprite.visible and player.scrubbing:
		displayed_dirt = move_toward(displayed_dirt, dirt_amount, fade_speed * delta)
		var c := DirtSprite.modulate
		c.a = displayed_dirt
		DirtSprite.modulate = c
		
	if held:
		return
	elif selected:
		plate.position.y = outlineWidth
	else:
		plate.position.y = 0
	
	
func reduce_dirt(amount: float) -> void:
	dirt_amount = clamp(dirt_amount - amount, 0.0, 1.0)
	if dirt_amount <= 0.0:
		_on_fully_clean()

func _on_fully_clean() -> void:
	DirtSprite.visible = false
	DirtCollision.disabled = true

#makes the dirt dissapear on sponge interaction!!
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = true

func _on_area_3d_area_exited(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = false


func _on_body_entered(body: Node) -> void:
	if linear_velocity.length() > 1.0 and body.get_parent().is_in_group('world'):
	#drop_sound.play()
		print('drop sound')
