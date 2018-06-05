extends Spatial

const vrpnClient = preload("res://bin/vrpnClient.gdns")

var inst = null
func _ready():
	print(vrpnClient)
	inst = vrpnClient.new()
	inst.connect("tracker@localhost:3885")

func _process(delta):
	inst.mainloop()
	#print(inst.analog)
	#print(inst.pos)
	print(inst.quat)
	#print(inst.button)