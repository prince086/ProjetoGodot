extends Area2D

func _ready():
	
	pass


func _on_power_up_tiroDuplo_area_enter(area):
	if area.is_in_group(game.GRUPO_NAVE):
		area.set_arma(2)
		queue_free()
		pass
	pass # replace with function body
