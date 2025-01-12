extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	apply_impulse(Vector2(randf(),randf())*500)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(linear_velocity.length_squared())
	if linear_velocity.length_squared()<400000:
		apply_impulse(linear_velocity.normalized()*50)
		#use the randf to do silly thing
		#give the paddle pinball flipper things
		#make it pinball but with breakout walls 
