extends Node3D

@export var plate: PackedScene
@onready var plate_markers: Node3D = $PlateMarkers
var spawn_points: Array[Node3D] = []

var plates_cleaned := 0
@onready var instructions: Label = $CanvasLayer/Instructions
var rain_active := false
@onready var glitch_screen: ColorRect = $CanvasLayer/GlitchScreen

#sfx and dialouge
@onready var WashTheDishes: AudioStreamPlayer3D = $SFXDialouge/WashTheDishes
@onready var sfx_dialouge: Node = $SFXDialouge
@onready var sfx_dialouge_timer: Timer = $SFXDialougeTimer
var players := []

@onready var player: CharacterBody3D = $player
@onready var sponge: RigidBody3D = $sponge
@onready var sink_water: AnimatedSprite3D = $Room/Counters/Sink/Sink_Water

func _ready() -> void:
	#play opening sfx
	WashTheDishes.play()
	sink_water.play('nothing_burger')
	#make sfx list with a loop for random choice later
	for child in $SFXDialouge.get_children():
		if child is AudioStreamPlayer3D:
			players.append(child)
	
	#3 seconds of silence for the instructions
	await get_tree().create_timer(3.0).timeout
	instructions.hide()
	
	#makes a list of callable points so the plates spawn right
	for point in plate_markers.get_children():
		spawn_points.append(point)
	
	sink_water.play('sink_running')
	_spawn_new_plates()
	
	
	#connects 10s sfx player timer
	sfx_dialouge_timer.timeout.connect(_on_timeout)

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
	var rain_area_min := Vector2(-2, -2)
	var rain_area_max := Vector2(2, 2)
	
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
		new_plate.global_position = Vector3(rand_x, 2.5, rand_z)
		new_plate.cleaned.connect(_on_plate_cleaned)

		await get_tree().create_timer(interval).timeout
		elapsed += interval

	rain_active = false

func _input(event: InputEvent) -> void:
	
	if event.is_action_pressed("reset"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
	
	if event.is_action_pressed("fullscreen"):
		var mode := DisplayServer.window_get_mode()
		var is_window: bool = mode != DisplayServer.WINDOW_MODE_FULLSCREEN
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN if is_window else DisplayServer.WINDOW_MODE_WINDOWED)
		
func play_random_sfx() -> void:
	# don't interrupt if something is already playing
	for p in players:
		if p.playing:
			return
	players[randi() % players.size()].play()

func _on_timeout() -> void:
	play_random_sfx()
