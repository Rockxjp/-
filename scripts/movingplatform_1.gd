extends AnimatableBody2D

@export var move_distance := 80.0
@export var speed := 100.0

var start_position
var direction := 1

func _ready():
	start_position = global_position

func _physics_process(delta):
	position.x += speed * direction * delta

	if position.x > start_position.x + move_distance:
		direction = -1
	elif position.x < start_position.x:
		direction = 1
