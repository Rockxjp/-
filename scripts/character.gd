extends CharacterBody2D

@onready var AnimatedSprite2DIdle = $AnimatedSprite2DIdle
@onready var AnimatedSprite2DRun = $AnimatedSprite2DRun

const SPEED = 150.0
const JUMP_VELOCITY = -300.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	
	# 處理移動速度
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# 修正翻轉邏輯：走路與待機要一起翻轉
	if direction > 0:
		AnimatedSprite2DIdle.flip_h = false
		AnimatedSprite2DRun.flip_h = false
	elif direction < 0:
		AnimatedSprite2DIdle.flip_h = true
		AnimatedSprite2DRun.flip_h = true

	if direction == 0:
		AnimatedSprite2DIdle.show()
		AnimatedSprite2DIdle.play("Idle")
		AnimatedSprite2DRun.hide()
		AnimatedSprite2DRun.stop()
	else:
		AnimatedSprite2DRun.show()
		AnimatedSprite2DRun.play("run")
		AnimatedSprite2DIdle.hide()
		AnimatedSprite2DIdle.stop()

	move_and_slide()
