extends Area2D

@export var fall_force := 100.0
@export var wall5: StaticBody2D

var bodies := []

func _ready():
	wall5.disable_wall()

func _physics_process(_delta):
	for body in bodies:
		if body.is_in_group("player"):
			body.velocity.y += fall_force

func _on_body_entered(body):
	if body.is_in_group("player"):
		bodies.append(body)
		wall5.enable_wall()

func _on_body_exited(body):
	if body.is_in_group("player"):
		bodies.erase(body)
