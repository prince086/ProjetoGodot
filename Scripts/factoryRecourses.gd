extends Node

func gerarRecurso(value):
	return get_children()[value].duplicate()
	pass

func gerarRandomicoRecurso():
	return get_children()[randi() % get_children().size()].duplicate()
	pass