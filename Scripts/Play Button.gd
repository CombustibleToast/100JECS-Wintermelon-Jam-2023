extends Button

func _ready():
	print(name + " ready")

# Function stub created by Godot and linked to this function.
func _on_pressed():
	print("pressed 2!")
	get_tree().change_scene_to_file("res://scenes/main scene.tscn")
