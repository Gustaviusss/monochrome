extends Node

export var themesongpath = "res://assets/sfx/tema3.wav"
var theme_song = load(themesongpath) 

func _ready():
	pass

func play_music():
	$Music.stream = theme_song
	$Music.play()

func stop_music():
	$Music.stop()


func _on_Music_finished():
	$Music.play()
