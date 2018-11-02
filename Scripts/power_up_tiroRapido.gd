extends Area2D

func _ready():
	
	pass

func _on_power_up_tiroRapido_area_enter(area):
	if area.is_in_group(game.GRUPO_NAVE):
		area.set_arma(1)
		queue_free()
		pass # replace with function body
	pass
