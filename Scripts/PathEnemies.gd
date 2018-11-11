extends Path2D

onready var follow = get_node("follow")
var vel = 200

func _ready():
	set_curve(recursos.random_path())
	set_process(true)
	get_node("follow/Enemie01").connect("destroy", self, "_on_destroy")
	pass

func _process(delta):
	follow.set_offset(follow.get_offset() + vel * delta)
	if follow.get_unit_offset() >= 1:
		queue_free()
		pass
	pass

func _on_destroy():
	set_process(false)
	var timer = Timer.new()
	timer.set_wait_time(3)
	timer.connect("timeout", self, "queue_free")
	timer.start()
	add_child(timer)
	pass