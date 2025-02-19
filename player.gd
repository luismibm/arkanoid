extends CharacterBody2D

var speed = 100.0

func _physics_process(delta: float) -> void:
	
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_left"):
		direction = Vector2.LEFT
	if Input.is_action_pressed("ui_right"):
		direction = Vector2.RIGHT
		
	var direction_speed = direction * speed
	
	move_and_collide(direction_speed * delta)
