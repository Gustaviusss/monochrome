extends Node2D

export var local = ""
export var flip = true

func _ready():
	$Sprite.flip_h = flip


func _on_porta_body_entered(body):
	if body.name == "pi":
		get_tree().change_scene(local)
