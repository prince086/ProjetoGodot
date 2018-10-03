extends Node

var pre_meteor = preload("res://Scenes/Meteoro.tscn")
var intervalo = 1

func _ready():
	set_process(true)
	
func _process(delta):	
	if intervalo > 0:
		intervalo -= delta
	else:
		intervalo = rand_range(0.3 , 1)
		var meteoro = pre_meteor.instance()
		meteoro.set_pos(Vector2(rand_range(50, 550),-30))
		get_owner().add_child(meteoro)