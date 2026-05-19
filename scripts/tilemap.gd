extends TileMapLayer

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("user-ui"):
			get_tree().change_scene_to_file("res://場景/暫停介面.tscn")
