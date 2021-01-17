extends Control
class_name HomeControl

const LVL_PATH = "res://scenes/fases/Fase%d.tscn"
var save_file = SaveFile.new()
var save_game = preload("res://savegame.res")

func _ready():
	if save_game.level == 1:
		$bContinue.disabled = true
		$bContinue.visible = false
	else: 
		$bContinue.disabled = false
		$bContinue.visible = true
	
	MusicController.play_music()

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		save_game.level = 1
		get_tree().change_scene("res://scenes/fases/Fase1.tscn") 
	elif Input.is_action_just_pressed("continue"):
		get_tree().change_scene(LVL_PATH % save_game.level)

func save_progress(num:int):
	save_game.level = num
	ResourceSaver.save("res://savegame.res", save_game)

func _on_bContinue_pressed():
	get_tree().change_scene(LVL_PATH % save_game.level)
	pass

func _on_bStart_pressed():
	save_game.level = 1
	get_tree().change_scene("res://scenes/fases/Fase1.tscn") 


func _on_Button_pressed():
	get_tree().quit()
