extends KinematicBody2D

var velocity = Vector2(0,0)
var moveSpeed = 1000

func _ready():
	pass

func _process(delta):
	#INPUT HANDLING
	if Input.is_action_pressed("LEFT"):
		velocity.x = -moveSpeed * delta
	elif Input.is_action_pressed("RIGHT"):
		velocity.x = moveSpeed * delta
	else:
		velocity.x = 0
	
	move_and_collide(self.velocity)