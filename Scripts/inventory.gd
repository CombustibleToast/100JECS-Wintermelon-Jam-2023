extends Control

var is_open: bool = false

func open():
	visible = true
	is_open = true

func close():
	visible = false
	is_open = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
