extends Node2D


func _ready():
	pass

func _on_Area2D_body_entered(body):
	if 'pi' in body.name:
		get_tree().reload_current_scene()
