extends CharacterBody2D

var speed = Vector2(70, -70)

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(speed * delta)
	
	if collision:
		
		print(collision.get_collider().get("name")) # https://forum.godotengine.org/t/get-name-of-object-scene-during-collision/50612
		speed = speed.bounce(collision.get_normal())
