extends Node2D


func _ready():
	MusicController.play_music()
	progress()
	pass

func progress():
	var save = HomeControl.new()
	save.save_progress(1)
