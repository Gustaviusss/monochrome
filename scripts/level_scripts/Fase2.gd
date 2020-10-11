extends Node2D

var save = HomeControl.new()

func _ready():
	progress()
	MusicController.play_music()
	pass

func progress():
	
	save.save_progress(2)
