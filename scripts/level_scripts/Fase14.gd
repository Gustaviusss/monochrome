extends Node2D

var save = HomeControl.new()
func _ready():
	save.save_progress(14)
	pass

func _on_Button1_body_entered(body):
	$SpikeHide.visible = true

func _on_Button2_body_entered(body):
	$Anim.play("rain")


func _on_Button1_body_exited(body):
	$SpikeHide.visible = false
