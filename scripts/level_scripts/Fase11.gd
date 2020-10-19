extends Node2D

var control = PlayerControl.new()

func _ready():
	pass


func _on_Area2D_body_entered(body):
	$anim.play("invert")


func _on_Area2D2_body_entered(body):
	$anim.play("uninvert")
