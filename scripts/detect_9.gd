extends Area2D
@export var floor5: StaticBody2D

func _ready():
	floor5.enable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		floor5.disable_wall()
