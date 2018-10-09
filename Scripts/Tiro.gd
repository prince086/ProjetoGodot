extends Area2D

var vel = 500

func _ready():
	set_process(true)
	pass

func _process(delta):
	
	set_pos(get_pos() + Vector2(0,-1) * vel * delta)
	
	if get_pos().y < -30:
		free()
		pass
	pass

func _on_Tiro_area_enter( area ):
	if area.is_in_group(game.GRUPO_INIMIGO):
		if area.has_method("destroyMeteoro"):
			area.destroyMeteoro()
			pass
		pass
	queue_free()
	pass