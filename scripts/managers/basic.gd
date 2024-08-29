@tool
class_name GlobalVelocity
extends Node

var _speed: float
var _accel: float

var _calculation: float

func get_calculation():
	
	return _calculation

func set_calculation(_div:float,_buff):

	_calculation = ( Globals.windowHeight / _div ) + ( _buff * 10 )

func get_speed():
	return _speed

func set_speed(_buff):
	
	set_calculation(2.0,1)
	_speed = get_calculation()
	
func get_accel():
	return _accel

func set_accel(_buff):
	
	set_calculation(20.0,1)
	_accel = get_calculation()
