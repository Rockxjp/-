extends Area2D
@export var movingplatform4: StaticBody2D

func _ready():
	movingplatform4.disable_wall()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		movingplatform4.enable_wall()
