extends Node2D

var password = "zudtqcsson".to_upper()
var palavra = ""

func _ready():
	MusicController.play_music()
	progress()
	pass

func parede(letra):
	palavra = palavra+letra.to_upper()
	$Control/Label.set_text(palavra)
	if palavra == password:
		$parede/anim.play("destroy")

func _on_0_body_entered(body):
	$botoes/zero/animzero.play("push")
	parede('z')
	print(palavra)


func _on_um_body_entered(body):
	$botoes/um/animzero.play("push")
	parede('u')
	print(palavra)


func _on_dois_body_entered(body):
	$botoes/dois/animzero.play("push")
	parede('d')
	print(palavra)


func _on_tres_body_entered(body):
	$botoes/tres/animzero.play("push")
	parede('t')
	print(palavra)


func _on_quatro_body_entered(body):
	$botoes/quatro/animzero.play("push")
	parede('q')
	print(palavra)


func _on_cinco_body_entered(body):
	$botoes/cinco/animzero.play("push")
	parede('c')
	print(palavra)


func _on_seis_body_entered(body):
	$botoes/seis/animzero.play("push")
	parede('s')
	print(palavra)


func _on_sete_body_entered(body):
	$botoes/sete/animzero.play("push")
	parede('s')
	print(palavra)


func _on_oito_body_entered(body):
	$botoes/oito/animzero.play("push")
	parede('o')
	print(palavra)


func _on_nove_body_entered(body):
	$botoes/nove/animzero.play("push")
	parede('n')
	print(palavra)

func progress():
	var save = HomeControl.new()
	save.save_progress(5)

