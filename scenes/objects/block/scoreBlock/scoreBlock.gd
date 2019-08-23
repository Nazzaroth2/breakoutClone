extends "res://scenes/objects/block/block.gd"

func _ready():
	self._addRandCol()


func _addRandCol():
	var colorList = ["aqua","gray","orange"]
	randomize()
	var randInt = randi() % 3
	$Polygon2D.color = ColorN(colorList[randInt])