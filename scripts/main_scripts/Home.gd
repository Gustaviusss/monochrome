extends Control
class_name HomeControl

const LVL_PATH = "res://scenes/fases/Fase%d.tscn"
var save_file = SAveFile.new()
var save_game = preload("res://resourses/savegame.tres")

func _ready():
	if save_game.level == 1:
		$bContinue.disabled = true
		$bContinue.visible = false
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scenes/fases/Fase1.tscn") 

func save_progress():
	save_file.level += 1 
	ResourceSaver.save("res://resourses/savegame.tres", save_file)
	print(save_file.level)

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/fases/Fase1.tscn") 

func _on_bContinue_pressed():
	get_tree().change_scene(LVL_PATH % save_game.level)