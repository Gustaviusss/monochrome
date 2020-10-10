extends Node2D


func _ready():
	progress()

func progress():
	var save = HomeControl.new()
	save.save_progress(6)

func _on_b1_body_entered(body):
	$botoes/b1/anim.play("show_floor")
	$Timer.start()
	


func _on_Timer_timeout():
	$botoes/b1/anim.play("move_floor")


func _on_b2_body_entered(body):
	$botoes/b2/anim.play("hide_floor")
