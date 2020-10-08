extends Node2D


func _ready():
	pass


func _on_b1_body_entered(body):
	$anim.play("1_move")

func _on_b2_body_entered(body):
	$anim.play("2_move")


func _on_b4_body_entered(body):
	$anim.play("4_move")


func _on_b3_body_entered(body):
	$anim.play("3_move")


func _on_b5_body_entered(body):
	get_tree().reload_current_scene()


func _on_b6_body_entered(body):
	$anim.play("6_move")
