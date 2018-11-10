
extends Area2D

var pre_tiro = preload("res://Scenes/tiroEnemie.tscn")

func _ready():
	get_node("Sprite").set_texture(recursos.random_enemie())
	pass

func _on_TimerTiro_timeout():
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(get_node("PosTiro").get_global_pos())
	game.getCamera().add_child(tiro)
	pass # replace with function body
