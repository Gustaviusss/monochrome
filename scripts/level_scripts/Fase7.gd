extends Node2D


func _ready():
	progress()

func progress():
	var save = HomeControl.new()
	save.save_progress(7)

func _on_botao1_body_entered(body):
	$botoes/botao1/AnimationPlayer.play("hide_door")


func _on_botao2_body_entered(body):
	$botoes/botao1/AnimationPlayer.play("show_floor")


func _on_botao3_body_entered(body):
	get_tree().reload_current_scene()
