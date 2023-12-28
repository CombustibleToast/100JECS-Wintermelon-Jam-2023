extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	# This script was created from the template player controller script for the CharacterBody2D node,
	# but I've gutted it and made it look nicer lol
	# -Ena

	# Gather inputs and pack into Vec2 -Ena
	var input_vector = Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down"))

	# Normalize movement so moving on diagonals isn't faster and apply to velocity
	if input_vector.length() != 0:
		velocity = input_vector.normalized() * SPEED;
	else:
		velocity = velocity.move_toward(Vector2(0,0), SPEED/10);
		# Minor bug: does not handle diagonals well; 
		#if you release one key slightly before the other, one of the components will instantly become 0 while the other smoothstops
		# -Ena

	move_and_slide() # This actually updates the node's position in the scene -Ena
