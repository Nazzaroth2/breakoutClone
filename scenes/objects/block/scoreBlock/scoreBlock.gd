extends "res://scenes/objects/block/block.gd"

func _ready():
	self._addRandCol()


func _addRandCol():
	var colorList = ["aqua","gray","orange"]
	randomize()
	var randInt = randi() % 3
	$Polygon2D.color = ColorN(colorList[randInt])

func _on_Area2D_area_entered(area):
	if area.get_parent().name == "ball": #check if collision is with normal ball
		self._getHit()
		
		
func _getHit():
	self.blockHealth -= 1
	if self.blockHealth == 0:
		self._getDestroyed()

func _getDestroyed():
	self.queue_free()
