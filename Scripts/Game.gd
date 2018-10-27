extends Node

const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave"

func getCamera():
	return get_tree().get_root().get_node("Main Game").get_node("Camera2D")
	pass

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
