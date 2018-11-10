extends "res://Scripts/ClasseEnemy.gd"

var vel = 200
var rot = 0

func _process(delta):
	set_pos(get_pos() + Vector2(0,1) * vel * delta)
	rotate(deg2rad(rot * delta))
	
func _Initial():
	rot = rand_range(-180,180)
	pass
	
func _DestroyEnemy():
	get_node("SampleMeteor").play("explosion_asteroid")
	get_node("AnimationPlayer").play("DestroyMeteor")
	pass