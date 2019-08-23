extends RigidBody2D

func _ready():
	pass
	
func _physics_process(delta):
	self.add_central_force(Vector2(0.5,-0.5))
