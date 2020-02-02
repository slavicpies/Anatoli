extends KinematicBody2D


var velocity = Vector2()




func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 50
	elif Input.is_action_pressed("ui_left"):	
		velocity.x = -50
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("ui_up"):	
		velocity.y = -50
	elif Input.is_action_pressed("ui_down"):	
		velocity.y = 50
	else:
		velocity.y = 0
	
		
	move_and_slide(velocity)
