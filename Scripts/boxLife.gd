extends Area2D

var vel = 200

func _ready():
	set_process(true)
	pass

func _process(delta):
	set_pos(get_pos() + Vector2(0,1) * vel * delta)
	pass

func _on_boxLife_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE):
		if game.lifes < 5:
			game.lifes += 1
		queue_free()
		pass
	pass # replace with function body
