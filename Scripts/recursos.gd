extends Node

var paths = []
var enemies = []

const path_dir = "res://Paths/"
const enemie_dir = "res://Sprites/Enemies/"

func _ready():
	loadPath()
	loadEnemie()
	pass

func random_path():
	return paths[randi() % paths.size()]
	
func random_enemie():
	return enemies[randi() % enemies.size()]
	
func loadFilesInDirectory(path):
	
	var files = []
	
	var dir = Directory.new()
	if dir.open(path) == OK:
		dir.list_dir_begin()
		var file_name  = dir.get_next()
		while file_name != "":
			if !dir.current_is_dir():
				files.append(path + file_name)
			file_name = dir.get_next()
			
	return files

func loadPath():
	
	var pt = loadFilesInDirectory(path_dir)
	
	for i in range (pt.size()):
		var path = load(pt[i])
		if path && path extends Curve2D:
			paths.append(path)
			
func loadEnemie():
	
	var en = loadFilesInDirectory(enemie_dir)
	
	for i in range (en.size()):
		var enemie = load(en[i])
		if enemie && enemie extends Texture:
			enemies.append(enemie)