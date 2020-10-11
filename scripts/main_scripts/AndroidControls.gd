extends Node2D

var play = PlayerControl.new()

func _ready():
	pass


func _on_home_pressed():
	get_tree().change_scene("res://scenes/Home.tscn")


func _on_reload_pressed():
	get_tree().reload_current_scene()

