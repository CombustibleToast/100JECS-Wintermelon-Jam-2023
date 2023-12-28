extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# ^ topdown -- No gravity -Ena

func _physics_process(delta):
	# Add the gravity.
	#if not is_on_floor():
	#	velocity.y += gravity * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY

	# Handle X input
	var x_direction = Input.get_axis("left", "right")
	if x_direction:
		velocity.x = x_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED) #lerp?
	
	# Handle Y input
	var y_direction = Input.get_axis("up", "down")
	if y_direction:
		velocity.y = y_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED) #lerp?
	
	# There is certainly a better way to get and process user input -Ena

	move_and_slide()
