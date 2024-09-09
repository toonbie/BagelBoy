extends CharacterBody2D

@export var speed = 300.0
@export var health = 3

# Player Movement
func _physics_process(delta):
	
	var directionx = Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony:
		velocity.y = directiony * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)

	move_and_slide()
	
func takeDMG():
	health -= 1
	print(health)
