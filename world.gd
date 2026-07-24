extends Node3D

@export var plate: PackedScene
@onready var plate_markers: Node3D = $PlateMarkers
var spawn_points: Array[Node3D] = []
@onready var plate_rain_markers: Node3D = $PlateRainMarkers
var rain_spawn_points: Array[Node3D] = []
var plates_cleaned := 0
@onready var instructions: Label = $CanvasLayer/Instructions
@onready var label: Label = $CanvasLayer/Label
var rain_active := false


func _ready() -> void:
	print()
	label.hide()
	await get_tree().create_timer(3.0).timeout
	instructions.hide()
	label.show()
	for child in plate_markers.get_children():
		if child is Marker3D:
			spawn_points.append(child)
	for child in plate_rain_markers.get_children():
		if child is Marker3D:
			rain_spawn_points.append(child)
	_spawn_new_plates()

func _on_plate_cleaned():
	plates_cleaned += 1
	if plates_cleaned >= 3:
		_spawn_new_plates()

func _spawn_new_plates():
	plates_cleaned = 0
	for point in spawn_points:
		var new_plate = plate.instantiate()
		add_child(new_plate)
		new_plate.add_to_group("dish")
		new_plate.global_position = point.global_position
		new_plate.cleaned.connect(_on_plate_cleaned)

func _plate_rain():
	var rain_area_min := Vector2(-5, -5)
	var rain_area_max := Vector2(5, 5)
	
	if rain_active:
		return
	rain_active = true
	var duration := 5.0
	var interval := 0.3
	var elapsed := 0.0

	while elapsed < duration:
		var new_plate = plate.instantiate()
		add_child(new_plate)
		new_plate.add_to_group("dish")
		var rand_x = randf_range(rain_area_min.x, rain_area_max.x)
		var rand_z = randf_range(rain_area_min.y, rain_area_max.y)
		new_plate.global_position = Vector3(rand_x, 4, rand_z)
		new_plate.cleaned.connect(_on_plate_cleaned)

		await get_tree().create_timer(interval).timeout
		elapsed += interval

	rain_active = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reset"):
		var dishes
		dishes = get_tree().get_nodes_in_group('dish')
		for dish in dishes:
			dish.queue_free()
		_spawn_new_plates()
