extends "res://Scripts/ClasseEnemy.gd"

var pre_tiro = preload("res://Scenes/tiroEnemie.tscn")
signal destroy;

func _on_TimerTiro_timeout():
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(get_node("PosTiro").get_global_pos())
	game.getCamera().add_child(tiro)
	pass # replace with function body

func _Initial():
	get_node("Sprite").set_texture(recursos.random_enemie())
	pass

func _DestroyEnemy():
	get_node("Sprite").hide()
	get_node("TimerTiro").stop()
	get_node("SampleExpEnemy").play("explosion_enemy")
	get_node("Explosion/AnimationPlayer").play("AnimExplosion")
	emit_signal("destroy")
	pass