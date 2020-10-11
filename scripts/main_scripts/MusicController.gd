extends Node

var theme_song = load("res://assets/sfx/tema3.wav")

func _ready():
	pass

func play_music():
	$Music.stream = theme_song
	$Music.play()

func stop_music():
	$Music.stop()


func _on_Music_finished():
	play_music()
