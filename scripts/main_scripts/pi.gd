extends KinematicBody2D
class_name PlayerControl

var up = Vector2(0,-1)
var jump = -725
var motion = Vector2(0,0)
var gravity = 45
var speed = 400
export var fliph = false
export var flipv = false
export var antigravity = false

func _ready():
	if fliph == true:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false
	
	


func _physics_process(delta):
	if antigravity == false:
		motion.y += gravity
	if antigravity == true:
		motion.y -= gravity
	
	if flipv == true:
		$Sprite.flip_v = true
	else:
		$Sprite.flip_v = false
	
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$Sprite.flip_h = true
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = jump
			$Sprite.frame = 5
		else:
			$Sprite.frame = 0
	if is_on_ceiling():
		if Input.is_action_pressed("jump"):
			motion.y = -jump
			$Sprite.frame = 5
		else:
			$Sprite.frame = 0
	
	motion = move_and_slide(motion, up)
	
	if $".".get_position().y >= 750 || $".".get_position().y <= -150:
		get_tree().reload_current_scene()
