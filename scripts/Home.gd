extends Control


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scenes/fases/Fase1.tscn") 


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/fases/Fase1.tscn") 

