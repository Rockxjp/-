extends Area2D

@export var wall9: StaticBody2D

@export var move_distance: float = 95.5
@export var move_duration: float = 0.25

var triggered := false

func _ready():
	if wall9 != null:
		wall9.process_mode = PROCESS_MODE_INHERIT

func _on_body_entered(body):
	if triggered:
		return
	
	if body.is_in_group("player") or body.name == "Character":
		triggered = true
		move_wall_left()

func move_wall_left():
	if wall9 != null:
		wall9.process_mode = PROCESS_MODE_INHERIT
		wall9.visible = true
		
		var tween = create_tween()
		var target_x = wall9.position.x - move_distance
		
		tween.tween_property(wall9, "position:x", target_x, move_duration)
