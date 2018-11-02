var pre_tiro = preload("res://Scenes/TiroVerde.tscn")
var ultimo_disparo = 0
var intervalo = 0.15
var nave

func _init(nave):
	self.nave = nave
	pass

func dispara():
	if ultimo_disparo <= 0:
		criaTiro(nave.get_node("PosCannon"))
		ultimo_disparo = intervalo
	pass
	
func atualiza_disparo(delta):
	if ultimo_disparo > 0:
		ultimo_disparo -= delta
		pass
	pass
	
func criaTiro(node):
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(node.get_global_pos())
	nave.get_owner().add_child(tiro)
	pass