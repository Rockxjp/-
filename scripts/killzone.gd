extends Area2D
var death_count = 0
func _on_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	death_count += 1
