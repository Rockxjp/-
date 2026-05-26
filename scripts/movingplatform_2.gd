extends AnimatableBody2D
@export var speed := 300.0

var moving := false

func _physics_process(delta):
	if moving:
		global_position.x -= speed * delta



func _on_detect_5_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		moving = true
