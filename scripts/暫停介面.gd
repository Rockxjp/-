extends Control



func _on_離開遊戲_pressed() -> void:
	get_tree().quit()




func _on_繼續遊戲_pressed() -> void:
	get_tree().change_scene_to_file("res://場景/Tilemap.tscn")
