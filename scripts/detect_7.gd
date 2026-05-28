extends Area2D

@export var floor4_1: StaticBody2D
@export var floor4_2: StaticBody2D
@export var floor4_3: StaticBody2D
@export var floor4_4: StaticBody2D
@export var floor4_5: StaticBody2D

func _ready():
	floor4_1.enable_wall()
	floor4_2.enable_wall()
	floor4_3.enable_wall()
	floor4_4.enable_wall()
	floor4_5.enable_wall()
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		floor4_1.disable_wall()
		await get_tree().create_timer(1.0).timeout
		floor4_2.disable_wall()
		await get_tree().create_timer(1.0).timeout
		floor4_3.disable_wall()
		await get_tree().create_timer(1.0).timeout
		floor4_4.disable_wall()
		await get_tree().create_timer(1.0).timeout
		floor4_5.disable_wall()
