extends Area2D

export var vida = 2
export var pontos = 100

func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	set_process(true)
	_Initial()
	pass

func DamageEnemy(dano):
	vida -= dano
	if vida<=0 :
		game.score += pontos
		_DestroyEnemy()
		set_process(false)
		set_z(10)
		remove_from_group(game.GRUPO_INIMIGO)
		game.getCamera().shake()
		pass
	pass
	
func _Initial():
	pass

func _DestroyEnemy():
	pass