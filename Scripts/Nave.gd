extends Area2D

var vel = 200
var arma

var TiroSimples = preload("res://Scripts/Class/armas/TiroSimples.gd")
var TiroDuplo = preload("res://Scripts/Class/armas/TiroDuplo.gd")
var TiroRapido = preload("res://Scripts/Class/armas/TiroRapido.gd")

var armas = [
	TiroSimples.new(self),
	TiroRapido.new(self),
	TiroDuplo.new(self)
]

func _ready():
	set_process(true);
	arma = TiroSimples.new(self)
	add_to_group(game.GRUPO_NAVE)
	pass

func _process(delta):

	var d = 0
	var e = 0
	var c = 0
	var b = 0

	if Input.is_action_pressed("direita"):
		d = 1
	if Input.is_action_pressed("esquerda"):
		e = -1
	if Input.is_action_pressed("cima"):
		c = -1
	if Input.is_action_pressed("baixo"):
		b = 1
	if get_pos().x > (600 - 50):
		d = 0
	if get_pos().x < 50:
		e = 0
	if get_pos().y <  100:
		c = 0
	if get_pos().y > (900  - 100):
		b = 0
	set_pos(get_pos() + Vector2(1, 0) * vel * delta * (d + e) )
	set_pos(get_pos() + Vector2(0, 1) * vel * delta * (c + b) )

	#Disparo	
	if Input.is_action_pressed("tiro"):
		arma.dispara()
		pass
	
	arma.atualiza_disparo(delta)
	
	pass

func set_arma(value):
	arma = armas[value]
	pass

func _on_Nave_area_enter(area):
	if area.is_in_group(game.GRUPO_INIMIGO):
		get_node("AnimationPlayer").play("HitShip")
		if area.has_method("DamageEnemy"):
			area.DamageEnemy()
			DamageNave()
			pass
		pass
	elif area.is_in_group(game.GRUPO_TIRO_INIMINGO):
		get_node("AnimationPlayer").play("HitShip")
		if area.has_method("Destroy"):
			area.Destroy()
			DamageNave()
		pass
	pass

func DamageNave():
	game.lifes -= 1	
	if game.lifes == 0:
		queue_free()
		pass
	pass