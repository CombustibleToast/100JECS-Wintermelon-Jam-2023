extends Resource

class_name CharmInventory

@export var items: Array[CharmInventoryItem]
signal new_item_in_inventory


func insert_charm(item: CharmInventoryItem):
	# Find an empty slot and insert new item there
	for i in range(items.size()):
		if !items[i]:
			items[i] = item
			break
	
	new_item_in_inventory.emit()
	