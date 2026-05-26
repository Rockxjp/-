extends Control

func _on_離開遊戲_pressed() -> void:
	get_tree().quit()

func _on_立即重生_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/Game.tscn")

func _on_繼續遊戲_pressed() -> void:
	get_tree().paused = false
	queue_free()
