extends Node2D

var save = HomeControl.new() 
func _ready():
	save.save_progress(13)
	pass


func _on_button_body_entered(body):
	$Spike.visible = true


func _on_button_body_exited(body):
	$Spike.visible = false



