extends Area2D

@export var fall_force := 100.0

var bodies := []


func _physics_process(_delta):
	for body in bodies:
		if body.is_in_group("player"):
			body.velocity.y += fall_force

func _on_body_entered(body):
	if body.is_in_group("player"):
		bodies.append(body)

func _on_body_exited(body):
	if body.is_in_group("player"):
		bodies.erase(body)
