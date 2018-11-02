extends Node

const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave"

var score = 0 setget setScore
signal score_changed

func getCamera():
	return get_tree().get_root().get_node("Main Game").get_node("Camera2D")
	pass
	
func setScore(value):
	if value > 0:
		score = value
		emit_signal("score_changed")
		pass
	pass

func _ready():
	randomize()
	pass
