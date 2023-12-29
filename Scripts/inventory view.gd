extends Control

var is_open: bool = false

# load inventory model
@onready var inventory: CharmInventory = preload("res://Resources/charm inventory.tres")
@onready var slots: Array = $GridContainer.get_children()

func _ready():
	inventory.new_item_in_inventory.connect(update)
	update()

func update():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i])

func open():
	visible = true
	is_open = true

func close():
	visible = false
	is_open = false

# Made using this tutorial https://www.youtube.com/watch?v=qLrj_HWA9CI

