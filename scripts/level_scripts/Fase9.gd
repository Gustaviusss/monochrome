extends Node2D

var save = HomeControl.new()

func _ready():
	save.save_progress(9)
	pass


func _on_btn1_body_entered(body):
	$anim.play("show_green")


func _on_btn2_body_entered(body):
	$anim.play("show_red")
