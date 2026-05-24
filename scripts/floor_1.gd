extends StaticBody2D
@export var col: CollisionShape2D



func enable_wall():
	visible = true
	col.set_deferred("disabled", false)


func disable_wall():
	visible = false
	col.set_deferred("disabled", true)
