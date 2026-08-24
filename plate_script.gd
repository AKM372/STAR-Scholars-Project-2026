extends RigidBody3D
@onready var plate: RigidBody3D = $"."
@onready var plate_color: MeshInstance3D = $MeshInstance3D
var normal_color:= Color(0.5, 0.4, 0.9, 1.0)
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

#for dirt layering / fade
@export var fade_speed := 8.0
@export var max_dirt_layers := 3
@export var extra_dirt_chance := 0.1          # chance a new overlapping layer spawns on sponge contact
@export var dirt_layer_rotation_range := 30.0 # degrees, kept small so layers stay overlapping, not spread out
var dirt_layers: Array = []  # each entry: {sprite: Sprite3D, dirt_amount: float, displayed_dirt: float}


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
	
	
	
	dirt_layers.append({
		"sprite": DirtSprite,
		"dirt_amount": 1.0,
		"displayed_dirt": 1.0,
	})
	
func _set_selected(object):
	selected = self == object

func _process(delta):
	#checks to see if the plate is being held
	held = (player.pickedObject == self)
	
	#makes outline not visible when raycast is hitting the plate and it's not held
	outlineMesh.visible = selected and not held
	collision_shape_3d.disabled = held

	# fade only the front (active) dirt layer toward its target while scrubbing
	if not dirt_layers.is_empty() and player.scrubbing:
		var layer = dirt_layers[0]
		if layer["displayed_dirt"] != layer["dirt_amount"]:
			layer["displayed_dirt"] = move_toward(layer["displayed_dirt"], layer["dirt_amount"], fade_speed * delta)
			var c: Color = layer["sprite"].modulate
			c.a = layer["displayed_dirt"]
			layer["sprite"].modulate = c
	
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
	if dirt_layers.is_empty():
		return
	
	# only the front (most recently active) layer gets cleaned at a time
	var layer = dirt_layers[0]
	layer["dirt_amount"] = clamp(layer["dirt_amount"] - amount, 0.0, 1.0)
	if layer["dirt_amount"] <= 0.0:
		_remove_dirt_layer(layer)

func _remove_dirt_layer(layer: Dictionary) -> void:
	var sprite: Sprite3D = layer["sprite"]
	if sprite:
		sprite.visible = false
		if sprite != DirtSprite:
			sprite.queue_free()
	dirt_layers.erase(layer)
	if dirt_layers.is_empty():
		_on_fully_clean()

func _add_dirt_layer() -> void:
	var new_sprite: Sprite3D = DirtSprite.duplicate()
	DirtSprite.get_parent().add_child(new_sprite)
	
	# rotate in place only — no position offset — so it overlaps the existing sprite instead of spreading
	new_sprite.rotation_degrees.z += randf_range(-dirt_layer_rotation_range, dirt_layer_rotation_range)
	new_sprite.modulate.a = 1.0
	new_sprite.visible = true
	
	# newest layer goes to the front, so it's the one that gets scrubbed off first
	dirt_layers.push_front({
		"sprite": new_sprite,
		"dirt_amount": 1.0,
		"displayed_dirt": 1.0,
	})


func _on_fully_clean() -> void:
	DirtSprite.visible = false
	DirtCollision.disabled = true
	cleaned.emit()
	

#makes the dirt dissapear on sponge interaction!!
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge') and randf() > 0.4:
		sponge_touching = true
		
		if dirt_layers.size() < max_dirt_layers and randf() < extra_dirt_chance:
			_add_dirt_layer()
	

func _on_area_3d_area_exited(area: Area3D) -> void:
	if area.get_parent().is_in_group('sponge'):
		sponge_touching = false

func _on_ground_detector_body_entered(body: Node3D) -> void:
	if held:
		return
	if linear_velocity.length() > 1.0 and (body.is_in_group("world") or body.is_in_group("dish")):
		impact_sound.play()
	if linear_velocity.length() > break_velocity_threshold and (body.is_in_group("world")):
		break_plate()

func break_plate() -> void:
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
