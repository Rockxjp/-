extends AnimatableBody2D

@export var speed := 500.0
@export var move_distance := 160.0

var moving := false
var start_position
var triggered := false

func _ready():
	start_position = global_position
	
func _physics_process(delta):
	if moving:
		global_position.x -= speed * delta
	if global_position.x <= start_position.x - move_distance:
		moving = false

func _on_detect_9_body_entered(body: Node2D) -> void:
	if triggered:
		return
	if body.is_in_group("player"):
		triggered = true
		moving = true
