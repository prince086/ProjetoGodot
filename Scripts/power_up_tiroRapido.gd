extends Area2D

func _ready():
	
	pass


func _on_power_up_tiroRapido_area_enter( nave ):
	if nave.is_in_group(game.GRUPO_NAVE):
		nave.set_arma(1)
		queue_free()
		pass # replace with function body
	pass
