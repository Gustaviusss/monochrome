extends Node2D

func _ready():
	$anim.play("show logo")


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/Home.tscn")
	pass # Replace with function body.
