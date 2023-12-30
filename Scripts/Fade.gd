extends ColorRect

@export var fade_out_time_secs = 2
@export var hold_time_secs = 2
@export var extra_dark_time = 1
var elapsed_time: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	elapsed_time += delta
	modulate.a = lerp(0, 1, (elapsed_time - hold_time_secs)/fade_out_time_secs)
	print(modulate.a)
	if elapsed_time >= hold_time_secs + fade_out_time_secs + extra_dark_time:
		get_tree().change_scene_to_file("res://scenes/Title Screen.tscn")

