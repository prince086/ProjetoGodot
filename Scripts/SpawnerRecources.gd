extends Node
var pre_factory = preload("res://Scenes/factoryRecourses.tscn")
var factory

func _ready():
	factory = pre_factory.instance()
	pass

func _on_Timer_timeout():
	get_node("Timer").set_wait_time(rand_range(1.5 , 3))
	var recurso = factory.gerarRandomicoRecurso()
	recurso.set_pos(Vector2(rand_range(50, 550),-30))
	get_owner().add_child(recurso)
	pass # replace with function body
