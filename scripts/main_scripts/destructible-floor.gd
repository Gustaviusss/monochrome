extends Area2D

func _ready():
	pass 

func _on_floorarea1_body_entered(body):
	if body.name == 'pi' || body.name == 'Pi':
		$anim.play('destroy')
