extends Node

var paths = []
const path_dir = "res://Paths"

func _ready():
	loadPath()
	pass

func loadPath():
	var dir = Directory.new()
	dir.change_dir(path_dir)
	dir.list_dir_begin()
	
	var path_file = dir.get_next()
	
	while path_file != "":
		var path = load(path_dir + path_file)
		if path && path_file extends Curve2D:
			paths.append(path)
		path_file = dir.get_next()
		pass
	print("Caminhos carregados: "+str(paths.size()))
	pass