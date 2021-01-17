extends Node2D
var save = HomeControl.new()

func _ready():
	save.save_progress(18)
	pass 

func _on_button1_body_entered(body):
	$pi.antigravity = !$pi.antigravity
