extends CharacterBody2D

@export var speed: float = 240
@export var accel: float = 24

func _physics_process(_delta:float) -> void:
	var direction: Vector2 = Input.get_vector("left","right", "up", "down")

	velocity.x = move_toward(velocity.x, speed * direction.x, accel)
	velocity.y = move_toward(velocity.y, speed * direction.y, accel)

	move_and_slide()

#func _process(_delta: float) -> void:
#	pass
