extends KinematicBody2D

const UP = Vector2(0,-1)
const JUMP = -725
var motion = Vector2(0,0)
const GRAVITY = 45
var speed = 400
var life = 3
var vivo = true  
var mag = 0


func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$Sprite.flip_h = true
	else: 
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP
			$Sprite.frame = 5
		else:
			$Sprite.frame = 0
	
	motion = move_and_slide(motion, UP)
