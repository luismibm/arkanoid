extends CharacterBody2D

var speed = Vector2(70, -70)

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(speed * delta)
	
	if collision:
		
		# https://forum.godotengine.org/t/get-name-of-object-scene-during-collision/50612
		print(collision.get_collider().get('name'))
		
		if collision.get_collider().get('name') == 'player':
			
			var player = collision.get_collider()
			
			# distance, width, relation, angle, angle_rad
			
			speed = speed.bounce(collision.get_normal())
			speed = speed * 1.2
			
			# print od the above not initialized
			
		elif collision.get_collider().is_in_group('blocks'):
			collision.get_collider().queue_free()
			speed = speed.bounce(collision.get_normal())
			
		else:
			speed = speed.bounce(collision.get_normal())
