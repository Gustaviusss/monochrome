extends KinematicBody2D
class_name PlayerControl

var up = Vector2(0,-1)
export var jump = -725
var motion = Vector2(0,0)
var gravity = 45
var stop = 0
var inertia = 8
export var speed = 400
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
	
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision:
			if "Spike" in collision.collider.name:
				get_tree().reload_current_scene()
			if "box-block" in collision.collider.name:
				collision.collider.apply_central_impulse(-collision.normal * inertia)
	
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
			$Sprite.frame = 1
		else:
			$Sprite.frame = 0
	if is_on_ceiling():
		if Input.is_action_pressed("jump"):
			motion.y = -jump
			$Sprite.frame = 1
		else:
			$Sprite.frame = 0
	 
	motion = move_and_slide(motion, up, false, 4, PI/4, false)
	
	if $".".get_position().y >= 750 || $".".get_position().y <= -150:
		get_tree().reload_current_scene()
