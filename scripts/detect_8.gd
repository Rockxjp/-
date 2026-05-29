extends Area2D
@export var wall6: StaticBody2D
var triggered := false
func _ready():
	wall6.disable_wall()

func _on_body_entered(body: Node2D) -> void:
	if triggered:
		return
	if body.is_in_group("player"):
		triggered = true
		wall6.enable_wall()
		await get_tree().create_timer(1.0).timeout
		wall6.disable_wall()
