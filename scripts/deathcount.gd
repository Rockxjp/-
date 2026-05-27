extends CanvasLayer

@export var death_label: Label
func _process(_delta):
	death_label.text = "死亡數：" + str(Killzone.death_count)
	
