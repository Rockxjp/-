extends Area2D

@export var wall4: StaticBody2D
@export var floor3: StaticBody2D




func _ready():
	wall4.disable_wall()
	floor3.enable_wall()



func _on_body_entered(body):
	

	if body.is_in_group("player"):
		
		wall4.enable_wall()
		floor3.disable_wall()
