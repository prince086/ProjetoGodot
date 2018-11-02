extends Label

func _ready():
	game.connect("score_changed", self ,"_on_scope_changed")
	pass
	
func _on_scope_changed():
	set_text(str(game.score))
	pass