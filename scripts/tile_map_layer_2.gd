extends Area2D

@onready var dark_layer: TileMapLayer = $"../TileMapLayer2"

func _ready() -> void:
	dark_layer.visible = false
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Character":
		dark_layer.visible = true
