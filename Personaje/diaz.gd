#Los comentarios en ingles es por defecto al crear el CharacterBody
extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta: float) -> void:
	# Add the gravity.

	# Handle jump.
	var direction_verical := Input.get_axis("ui_up", "ui_down")
	if direction_verical:
		velocity.y = direction_verical * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_horizontal := Input.get_axis("ui_left", "ui_right")
	if direction_horizontal:
		velocity.x = direction_horizontal * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	
