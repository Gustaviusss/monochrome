extends Node2D


func _ready():
	pass


func _on_porta_body_entered(body):
	$AnimationPlayer.play("up_credits")
	$Timer.start()


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/Home.tscn")
