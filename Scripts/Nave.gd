extends Area2D

var pre_tiro = preload("res://Scenes/Tiro.tscn")
var vel = 200
var ultimo_disparo = 0
var intervalo = 0.3
var vida = 3

func _ready():
	set_process(true);
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
		if ultimo_disparo <= 0:
			dispara(get_node("PosCanhão"))
			ultimo_disparo = intervalo
		if ultimo_disparo > 0:
			ultimo_disparo -= delta
			pass
	pass

func dispara(node):
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(node.get_global_pos())
	get_owner().add_child(tiro)
	pass

func _on_Nave_area_enter( area ):
	if area.is_in_group(game.GRUPO_INIMIGO):
		get_node("AnimationPlayer").play("HitShip")
		if area.has_method("DestroyMeteor"):
			area.DestroyMeteor()
			DamageNave()
			print(vida)
			pass
		pass
	pass

func DamageNave():
	vida -= 1	
	if vida == 0:
		queue_free()
		pass
	pass