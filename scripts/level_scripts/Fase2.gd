extends Node2D

func _ready():
	progress()
	MusicController.play_music()
	pass

func progress():
	var save = HomeControl.new()
	save.save_progress(2)
