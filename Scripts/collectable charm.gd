extends Area2D

signal new_charm_collected
@export var associated_inventory_item_resource: CharmInventoryItem

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func collect(inventory: CharmInventory):
	# Create a new inventory item to be sent through the signal
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	inventory.insert_charm(associated_inventory_item_resource);

	# Update state values
	print("IMPLEMENT UPDATING STATE VALUES!!!!!!")
	# State.attraction += ...

	queue_free()
