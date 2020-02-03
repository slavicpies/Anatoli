extends KinematicBody2D

const GRAVITY = 10
const FLOOR = Vector2(0, -1)
const SPEED = 250
const JUMP = -425

var velocity = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("move_right"):
		velocity.x = SPEED
		$AnimatedSprite.play("Turn")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("move_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("Turn")
		$AnimatedSprite.flip_h = true
	else:
		velocity.x = 0
		$AnimatedSprite.play("Idle")
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP
	if velocity.y < 0:
		$AnimatedSprite.play("Jump")
	elif velocity.y > 0 and is_on_floor() == false:
		$AnimatedSprite.play("Fall")
		
	velocity.y += GRAVITY
	
	if Input.is_action_pressed("crouch"):
		$AnimatedSprite.play("Crouch")
	if Input.is_action_just_released("crouch"):
		$AnimatedSprite.play("Stand")
		
	velocity = move_and_slide(velocity, FLOOR)
