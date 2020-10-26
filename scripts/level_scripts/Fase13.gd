extends Node2D


func _ready():
	pass


func _on_button_body_entered(body):
	$Spike.visible = true


func _on_button_body_exited(body):
	$Spike.visible = false



