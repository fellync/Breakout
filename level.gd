extends Node2D
const WALL = preload("res://wall.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in range():
		var thiswall = WALL.instantiate()
		self.add_child(thiswall)
		thiswall.pos = x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
