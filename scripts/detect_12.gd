extends Area2D
@export var floor6: StaticBody2D

func _ready():
	floor6.enable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		floor6.disable_wall()
