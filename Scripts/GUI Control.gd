extends CanvasLayer

@onready var inventory_node = $"Inventory (Control Node)"

func _input(event):
	if event.is_action_pressed("open_inventory"):
		match inventory_node.is_open:
			true: inventory_node.close()
			false: inventory_node.open()
# Inventory control made using this tutorial https://www.youtube.com/watch?v=qLrj_HWA9CI


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#State.printStats()
	pass
	