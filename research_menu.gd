extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_abstract_pressed() -> void:
	get_tree().change_scene_to_file("res://abstract.tscn")


func _on_introduction_pressed() -> void:
	get_tree().change_scene_to_file("res://introduction.tscn")


func _on_background_pressed() -> void:
	get_tree().change_scene_to_file("res://background.tscn")

func _on_methods_pressed() -> void:
	get_tree().change_scene_to_file("res://methods.tscn")


func _on_results_pressed() -> void:
	get_tree().change_scene_to_file("res://results.tscn")


func _on_works_cited_pressed() -> void:
	get_tree().change_scene_to_file("res://works_cited.tscn")


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
