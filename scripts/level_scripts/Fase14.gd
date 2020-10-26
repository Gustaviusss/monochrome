extends Node2D


func _ready():
	pass


func _on_Button1_body_entered(body):
	$SpikeHide.visible = true
	


func _on_Button2_body_entered(body):
	# $SpikeUp.move_local_y(1200)
	pass
