extends Node

var theme_song = load("res://assets/sfx/buttercup.ogg")

func _ready():
	pass

func play_music():
	$Music.stream = theme_song
	$Music.play()
