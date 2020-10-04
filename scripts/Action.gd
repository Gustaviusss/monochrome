extends Node2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	$anim.play("push")
	pass # Replace with function body.
