extends RigidBody3D
@onready var plate: RigidBody3D = $"."
@onready var plate_color: MeshInstance3D = $MeshInstance3D
var normal_color:= Color(0.5, 0.4, 0.9, 1.0)
var glitch_color := Color(1.0, 0.2, 0.2)
var plate_material: StandardMaterial3D

#selection variables
@onready var outlineMesh: MeshInstance3D = $MeshInstance3D/outlineMesh
var selected = false
var outlineWidth = 0.05
var held := false

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
@onready var impact_sound: AudioStreamPlayer3D = $ImpactSound

#glitch mechanics
signal cleaned
var cleaned_num: int = 0

#breaking
@export var broken_plate_scene: PackedScene
var break_velocity_threshold := 3.5
var broken := false

func _ready():
	#connects raycast to selection
	player = get_tree().get_first_node_in_group("player")
	if player:
		player.interact_object.connect(_set_selected)
	outlineMesh.visible = false
	
	_setup_material()
	
func _set_selected(object):
	selected = self == object

func _process(delta):
	#checks to see if the plate is being held
	held = (player.pickedObject == self)
	
	#makes outline not visible when raycast is hitting the plate and it's not held
	outlineMesh.visible = selected and not held
	collision_shape_3d.disabled = held
	
	# glitch visual + sponge-detection lockout
	if held and player.is_glitched:
		_set_plate_color(glitch_color)
	else:
		_set_plate_color(normal_color)
			
	if displayed_dirt != dirt_amount and DirtSprite.visible and player.scrubbing:
		displayed_dirt = move_toward(displayed_dirt, dirt_amount, fade_speed * delta)
		var c := DirtSprite.modulate
		c.a = displayed_dirt
		DirtSprite.modulate = c
	
	#raycast selection outline
	if held:
		return
	elif selected:
		outlineMesh.position.y = outlineWidth
	else:
		outlineMesh.position.y = 0
	
	
func reduce_dirt(amount: float) -> void:
	if not sponge_touching or player.is_glitched:
		return
	dirt_amount = clamp(dirt_amount - amount, 0.0, 1.0)
	if dirt_amount <= 0.0:
		_on_fully_clean()

func _on_fully_clean() -> void:
	DirtSprite.visible = false
	DirtCollision.disabled = true
	cleaned.emit()
	

#makes the dirt dissapear on sponge interaction!!
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge') and randf() > 0.4:
		sponge_touching = true

func _on_area_3d_area_exited(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = false

func _on_ground_detector_body_entered(body: Node3D) -> void:
	if held:
		return
	if linear_velocity.length() > 1.0 and (body.is_in_group("world") or body.is_in_group("dish")):
		impact_sound.play()
	if linear_velocity.length() > break_velocity_threshold and (body.is_in_group("world")):
		_break_plate()

func _break_plate() -> void:
	if broken or not broken_plate_scene:
		return
	broken = true
	
	var shards := broken_plate_scene.instantiate()
	get_parent().add_child(shards)
	shards.global_transform = global_transform
	shards.add_to_group("dish")
	# carry the plate's motion into the shards so it doesn't look like it teleports still
	for shard in shards.get_children():
		if shard is RigidBody3D:
			shard.linear_velocity = linear_velocity * 0.5 + Vector3(randf_range(-0.3, 0.3), randf_range(0.0, 0.3), randf_range(-0.3, 0.3))
			shard.angular_velocity = angular_velocity * 0.3 + Vector3(randf_range(-0.5, 0.5), randf_range(-0.5, 0.5), randf_range(-0.5, 0.5))
	cleaned.emit()
	queue_free()

func _setup_material() -> void:
	var mat = plate_color.get_surface_override_material(0)
	if mat == null:
		# no override yet — pull the mesh's own material and duplicate it so we can edit it safely
		mat = plate_color.mesh.surface_get_material(0)
		if mat:
			mat = mat.duplicate()
		else:
			mat = StandardMaterial3D.new()
		plate_color.set_surface_override_material(0, mat)
	plate_material = mat
	plate_material.albedo_color = normal_color

func _set_plate_color(color: Color) -> void:
	var mat = plate_color.get_surface_override_material(0)
	if mat:
		mat.albedo_color = color
