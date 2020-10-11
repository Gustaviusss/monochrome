extends Node2D


func _ready():
	MusicController.play_music()
	progress()

func progress():
	var save = HomeControl.new()
	save.save_progress(10)

func _on_porta_body_entered(body):
	$AnimationPlayer.play("up_credits")
	$Timer.start()
	$porta/CollisionShape2D.disabled = true


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/Home.tscn")
