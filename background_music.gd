extends Node3D
@onready var sink_running: AudioStreamPlayer3D = $SinkRunning


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(3.0).timeout
	sink_running.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sink_running_finished() -> void:
	sink_running.play()
