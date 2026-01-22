extends Node2D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file('res://Assets/Scenes/Clicker.tscn');


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_git_hub_link_pressed() -> void:
	OS.shell_open("https://github.com/AlexanderBykovski/MyFrirstGodotGame")
