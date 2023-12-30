extends Button

@onready var backgroundSprite: Sprite2D = $"slot background"
@onready var charmSprite: Sprite2D = $"charm"

func update(item: CharmInventoryItem):
	if(!item):
		charmSprite.visible = false
		#Todo: Also disable clicking interaction
	else:
		charmSprite.visible = true
		charmSprite.texture = item.texture


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
