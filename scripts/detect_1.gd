extends Area2D

@export var wall1: StaticBody2D
@export var wall2: StaticBody2D

var triggered := false

func _ready():
	wall1.disable_wall()
	wall2.disable_wall()

func _on_body_entered(body):
	if triggered:
		return
	if body.is_in_group("player"):
		triggered = true
		wall1.enable_wall()
		wall2.enable_wall()
		await get_tree().create_timer(1.0).timeout
		wall2.disable_wall()
