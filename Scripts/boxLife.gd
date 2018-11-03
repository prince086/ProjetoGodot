extends Area2D

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_boxLife_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE):
		if game.lifes < 5:
			game.lifes += 1
		queue_free()
		pass
	pass # replace with function body
