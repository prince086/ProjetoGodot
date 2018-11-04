extends Node2D

var pre_enemy = preload("res://Scenes/Enemies/PathEnemies.tscn")

func _ready():
	randomize_timer()
	pass
	
func randomize_timer():
	get_node("Timer").set_wait_time(rand_range(5, 10))
	pass

func _on_Timer_timeout():
	var enemy = pre_enemy.instance()
	get_parent().add_child(enemy)
	pass # replace with function body
