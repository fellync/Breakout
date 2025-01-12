extends CharacterBody2D

var movespeed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(800,800)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_and_collide(velocity)
	if Input.is_action_pressed("ui_left"):
		MoveLeft()
	if Input.is_action_pressed("ui_right"):
		MoveRight()

func MoveLeft():
	velocity.x = -movespeed
	
func MoveRight():
	velocity.x = movespeed
