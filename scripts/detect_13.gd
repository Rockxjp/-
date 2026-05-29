extends Area2D
@export var wall8: StaticBody2D

func _ready():
	wall8.enable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		await get_tree().create_timer(1.5).timeout
		wall8.disable_wall()
