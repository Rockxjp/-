extends Area2D

@export var lift_force := 100.0
@export var floor1: StaticBody2D
var bodies := []

func _ready():
	floor1.disable_wall()

func _physics_process(delta):

	for body in bodies:

		if body.is_in_group("player"):
			body.velocity.y -= lift_force

func _on_body_entered(body):

	if body.is_in_group("player"):
		bodies.append(body)
		floor1.disable_wall()
		await get_tree().create_timer(5.0).timeout
		floor1.enable_wall()

func _on_body_exited(body):

	if body.is_in_group("player"):
		bodies.erase(body)
