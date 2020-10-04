extends Node2D


func _ready():
	pass


func _on_botao1_body_entered(body):
	$botoes/botao1/AnimationPlayer.play("hide_door")


func _on_botao2_body_entered(body):
	$botoes/botao1/AnimationPlayer.play("show_floor")
