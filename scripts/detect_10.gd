extends Area2D
@export var wall7: StaticBody2D

func _ready():
	wall7.disable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		await get_tree().create_timer(0.2).timeout
		wall7.enable_wall()
