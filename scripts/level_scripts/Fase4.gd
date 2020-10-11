extends Node2D


func _ready():
	MusicController.play_music()
	progress()
	$chaoinvisivel/chao1/StaticBody2D/CollisionShape2D.disabled = true
	$chaoinvisivel/chao2/StaticBody2D/CollisionShape2D.disabled = true
	$chaoinvisivel/chao3/StaticBody2D/CollisionShape2D.disabled = true
	$chaoinvisivel/chao1.visible = false
	$chaoinvisivel/chao2.visible = false
	$chaoinvisivel/chao3.visible = false


func _on_button_body_entered(body):
	$anim.play("showblocks")

func progress():
	var save = HomeControl.new()
	save.save_progress(4)
