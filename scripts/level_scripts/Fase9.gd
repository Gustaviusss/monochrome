extends Node2D


func _ready():
	pass


func _on_btn1_body_entered(body):
	$anim.play("show_green")


func _on_btn2_body_entered(body):
	$anim.play("show_red")
