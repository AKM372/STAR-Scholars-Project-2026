extends Node3D

@export var plate: PackedScene
@onready var plate_markers: Node3D = $PlateMarkers
var spawn_points: Array[Node3D] = []
var plates_cleaned := 0


func _ready() -> void:
	for child in plate_markers.get_children():
		if child is Marker3D:
			spawn_points.append(child)
			
	_spawn_new_plates()

func _on_plate_cleaned():
	plates_cleaned += 1
	print("plates cleaned: ", plates_cleaned)
	if plates_cleaned >= 3:
		_spawn_new_plates()

func _spawn_new_plates():
	plates_cleaned = 0
	for point in spawn_points:
		var new_plate = plate.instantiate()
		add_child(new_plate)
		new_plate.global_position = point.global_position
		new_plate.cleaned.connect(_on_plate_cleaned)
