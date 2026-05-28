extends AnimatableBody2D

@export var speed := 500.0
@export var move_distance := 100.0
@export var col: CollisionShape2D

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

func enable_wall():
	visible = true
	col.set_deferred("disabled", false)

func disable_wall():
	visible = false
	col.set_deferred("disabled", true)


func _on_detect_11_body_entered(body: Node2D) -> void:
	if triggered:
		return
	if body.is_in_group("player"):
		await get_tree().create_timer(0.2).timeout
		triggered = true
		moving = true
