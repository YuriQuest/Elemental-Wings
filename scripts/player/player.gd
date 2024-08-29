extends CharacterBody2D

var player 	= GlobalVelocity.new()
var buff 	= 1

func _init():
	player.set_speed(buff)
	player.set_accel(buff)

func _physics_process(_delta:float) -> void:
	
	var direction: Vector2 = Input.get_vector("left","right", "up", "down")

	velocity.x = move_toward(velocity.x, player.get_speed() * direction.x, player.get_accel())
	velocity.y = move_toward(velocity.y, player.get_speed() * direction.y, player.get_accel())

	move_and_slide()

#func _process(_delta: float) -> void:
#	pass
