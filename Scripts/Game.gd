extends Node

const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave"

var score = 0 setget setScore
var lifes = 3 setget setLife

signal score_changed
signal life_changed

func getCamera():
	return get_tree().get_root().get_node("Main Game").get_node("Camera2D")
	pass
	
func setScore(value):
	if value > 0:
		score = value
		emit_signal("score_changed")
		pass
	pass
	
func setLife(value):
	lifes = value
	emit_signal("life_changed")
	pass

func _ready():
	randomize()
	pass