extends Area2D

var vel = 200
var rot = 0
	
func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	randomize()
	set_process(true)
	rot = rand_range(-5,5)
	pass

func _process(delta):
	set_pos(get_pos() + Vector2(0,1) * vel * delta)
	rotate(rot * delta)

	if get_pos().y > 910:
		free()
	pass

func destroyMeteoro():
	remove_from_group(game.GRUPO_INIMIGO)
	get_node("AnimationPlayer").play("DestroyMeteor")
	pass # replace with function body
