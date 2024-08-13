@tool
extends Node
class_name GlobalVelocity

var _windowSize =  DisplayServer.screen_get_size()

var _speed: float
var _accel: float
var _buff:  float

func get_speed():
	return _speed

func set_speed():
	#var floatWindowSize = _windowSize * 1.0
	var _calculation: float = _windowSize.x + (_buff * 10)
	print(_calculation)
	_speed = _calculation
	
func get_accel():
	return _accel

func set_accel():
	
	var _calculation: float = + (_buff * 10)
	_accel = _calculation

func get_buff():
	return _buff

func set_buff(buff: int):
	_buff = buff
