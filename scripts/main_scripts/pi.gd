extends KinematicBody2D
class_name PlayerControl

const UP = Vector2(0,-1)
export var jump = -725
var motion = Vector2(0,0)
const GRAVITY = 45
var speed = 400
export var flip = false

func _ready():
	if flip==true:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false


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
		if Input.is_action_pressed("jump"):
			motion.y = jump
			$Sprite.frame = 5
		else:
			$Sprite.frame = 0
	
	motion = move_and_slide(motion, UP)
	
	if $".".get_position().y >= 750:
		get_tree().reload_current_scene()
