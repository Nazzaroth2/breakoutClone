extends RigidBody2D

func _ready():
	self.apply_central_impulse(Vector2(200,-200))
	
func _physics_process(delta):
	pass
