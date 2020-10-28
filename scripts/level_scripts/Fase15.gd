extends Node2D


func _ready():
	pass


func _on_button_body_entered(body):
	if $"pi".antigravity == false:
		$anim.play("invert_gravity")
	else:
		$anim.play("uninvert_gravity")


func _on_button2_body_entered(body):
	$anim.play("move_door")
