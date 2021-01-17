extends Node2D

var save = HomeControl.new()
func _ready():
	save.save_progress(17)
	$Timer.start()

func _on_Timer_timeout():
	$anim.play("start")
