extends Node2D


var save = HomeControl.new()
func _ready():
	save.save_progress(20)
	pass
