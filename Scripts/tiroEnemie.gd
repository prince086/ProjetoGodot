extends Area2D

const rotation = 700
const vel = 200
const dir = Vector2(0,1)
var pontos = 10

func _ready():
	get_node("SampleEnemy").play("weapon_enemy")
	add_to_group(game.GRUPO_TIRO_INIMINGO)
	set_process(true)
	pass

func _process(delta):
	rotate(deg2rad(rotation*delta))
	translate(dir * vel * delta)
	pass

func Destroy():
	game.score += pontos
	queue_free()
	pass
