#extends KinematicBody2D
#class_name Actor

#const GRAVITY = 10
#const FLOOR = Vector2(0, -1)

#var on_ground = false
#var velocity = Vector2()

#func _physics_process(delta):
	
	#velocity = move_and_slide(velocity, FLOOR)
