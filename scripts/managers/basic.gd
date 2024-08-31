@tool
class_name GlobalVelocity
extends Node

var _speed: float
var _accel: float

var _calculation: float

func get_calculation():

	return _calculation

func set_calculation(_div:float,_bonus: float ):

	_calculation = ( Globals.baseSpeed / _div ) + ( _bonus * 10 )

func get_speed():
	return _speed

func set_speed(_bonus):
	
	set_calculation(1,1)
	_speed = get_calculation()
	
func get_accel():
	return _accel

func set_accel(_bonus):
	
	set_calculation(10.0,1)
	_accel = get_calculation()
