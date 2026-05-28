extends Control

func _on_button_2_pressed() -> void:
	get_tree().quit()

func _on_button_pressed() -> void:
	Gamemanager.death_count += 1
	
func _unhandled_input(event):
	if event.is_action_pressed("enter"):
		Gamemanager.death_count += 1
		get_tree().change_scene_to_file("res://scenes/Game.tscn")
	if event.is_action_pressed("space"):
		Gamemanager.death_count += 1
		get_tree().change_scene_to_file("res://scenes/Game.tscn")
