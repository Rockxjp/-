extends Area2D

@export var wall3: StaticBody2D
@export var floor2: StaticBody2D

func _ready():
	wall3.disable_wall()
	floor2.enable_wall()

func _on_body_entered(body):
	if body.is_in_group("player"):
		wall3.enable_wall()
		floor2.disable_wall()
