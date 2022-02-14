extends Node

class_name AiInputComponent

# Declare member variables here. Examples:
export (NodePath) var ball_path
onready var ball = get_node(ball_path)

var raquete

# Called when the node enters the scene tree for the first time.
func _ready():
	raquete = get_parent()
	raquete.connect("update", self, "calculate_velocity")

func calculate_velocity():
	if not "direction" in raquete:
		return
	
	raquete.direction = Vector2(0, get_ball_direction())

func get_ball_direction():
	if abs(raquete.position.y - ball.position.y) > 20:
		if raquete.position.y < ball.position.y:
			return 1
		else:
			return -1
	else:
		return 0
