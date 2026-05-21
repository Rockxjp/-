extends Control



func _on_離開遊戲_pressed() -> void:
	get_tree().quit()



func _on_立即重生_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Tilemap.tscn")
