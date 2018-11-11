extends Node

var pre_factory = preload("res://Scenes/FabricaMeteoro.tscn")
var factory

func _ready():
	factory = pre_factory.instance()
	pass

func _on_Timer_timeout():
	get_node("Timer").set_wait_time(rand_range(1 , 3))
	var meteoro = factory.gerarRandomicoMeteoro()
	meteoro.set_pos(Vector2(rand_range(50, 550),-30))
	get_owner().add_child(meteoro)
	pass # replace with function body
