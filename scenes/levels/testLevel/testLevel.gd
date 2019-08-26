extends Node2D

func _ready():
	var screenSize = OS.get_screen_size(0)
	var windowSize = OS.get_window_size()
	
	OS.set_window_position(screenSize * 0.5 - windowSize * 0.5)
