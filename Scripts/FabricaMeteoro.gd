extends Node

func gerarMeteoro(value):
	return get_children()[value].duplicate()
	pass

func gerarRandomicoMeteoro():
	return get_children()[randi() % get_children().size()].duplicate()
	pass