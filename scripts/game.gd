extends Node2D

var shop_scene = preload("res://scenes/player_ui.tscn")

@onready var ui_layer = get_node("CanvasLayer")

func _unhandled_input(event):
	if event.is_action_pressed("user-ui"):
		var shop = shop_scene.instantiate()
		ui_layer.add_child(shop)
		get_tree().paused = true
