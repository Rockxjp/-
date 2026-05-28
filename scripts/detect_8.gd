extends Area2D
@export var wall6: StaticBody2D

func _ready():
	wall6.disable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		await get_tree().create_timer(1.0).timeout
		wall6.enable_wall()
