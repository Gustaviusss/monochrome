extends RigidBody2D

var init_pos
var final_pos
var move = true
export var speed = 0.12
export(int) var moveSize

func _ready():
	init_pos = $".".position.x
	final_pos = init_pos + moveSize

func _process(delta):
	if moveSize > 0:
		if (init_pos <= final_pos and move):
			$".".position.x += speed
			if $".".position.x >= final_pos:
				move = false
		if ($".".position.x >= init_pos and !move):
			$".".position.x -= speed
			if $".".position.x <= init_pos:
				move = true
	else:
		if (init_pos >= final_pos and move):
			$".".position.x -= speed
			if $".".position.x <= final_pos:
				move = false
		if ($".".position.x <= init_pos and !move):
			$".".position.x += speed
			if $".".position.x >= init_pos:
				move = true
