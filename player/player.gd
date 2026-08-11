extends CharacterBody2D

@export var acceleration: int = 200
@export var max_speed: int = 2000
@export var deceleration: int = 200
@export var turn_speed: int = 200


func _physics_process(delta: float) -> void:
	
	var direction = Input.get_axis("left", "right") * acceleration
	
	if direction:
		velocity.x  = move_toward(velocity.x, direction * max_speed, acceleration * delta)
	else:
		velocity.x = move_toward(velocity.x, 0, deceleration * delta)
		
	move_and_slide()
