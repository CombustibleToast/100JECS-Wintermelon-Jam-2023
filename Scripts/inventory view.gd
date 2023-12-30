extends Control

var is_open: bool = false

# load inventory model
@onready var inventory: CharmInventory = preload("res://Resources/charm inventory.tres")
@onready var slots: Array = $GridContainer.get_children()



func _ready():
	inventory.new_item_in_inventory.connect(update)
	update()
	
	# Connect slot clicking to on_slot_clicked
	for slot in slots:
		var callable = Callable(on_slot_clicked)
		callable = callable.bind(slot)
		slot.pressed.connect(callable) #?? idk what all this is: https://youtu.be/Hn18rWfPDlY?list=PLMQtM2GgbPEVuTgD4Ln17ombTg6EahSLr

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

func on_slot_clicked(slot):
	print(slot.name)
	
