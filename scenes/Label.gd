extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.text = "Attraction Level: " + str(State.attraction) + "\nAffability Level: " + str(State.affability) + " Flattery Level: " + str(State.flattery) + "\nMystery Level: " + str(State.mystery) + " Confidence Level: " + str(State.confidence)
