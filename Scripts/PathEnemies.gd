extends Path2D

onready var follow = get_node("follow")
var vel = 200

func _ready():
	set_curve(recursos.random_path())
	set_process(true)
	pass

func _process(delta):
	follow.set_offset(follow.get_offset() + vel * delta)
	if follow.get_unit_offset() >= 1:
		queue_free()
		pass
	pass