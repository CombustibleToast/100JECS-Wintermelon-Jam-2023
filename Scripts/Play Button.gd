extends Button

func _ready():
	print(name + " ready")

func _pressed():
	print("pressed 1!")
	get_tree().change_scene_to_file("res://scenes/main scene.tscn")
