extends Node2D

var show = false

func _ready():
	pass


func _on_home_pressed():
	get_tree().change_scene("res://scenes/Home.tscn")


func _on_reset_pressed():
	get_tree().reload_current_scene()


func _on_pause_pressed():
	if show == false:
		$anim.play("show_buttons")
		show = true
	elif show == true:
		$anim.play("hide_buttons")
		show = false
