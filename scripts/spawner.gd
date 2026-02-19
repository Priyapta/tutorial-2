extends Node2D

var asteroid = preload("res://scenes/s_asteroid.tscn")

@onready var spawn_points = [
	$spawn_3,
	$spawn_2,
	$spawn_1,
	$spawn_4,
	$spawn_5
]

func _ready():
	randomize()
	#spawn_asteroid() 
	
func spawn_asteroid():
	var spawn_point = spawn_points.pick_random()
	var a = asteroid.instantiate()
	a.global_position = spawn_point.global_position
	get_parent().add_child(a)

func _on_timer_timeout() -> void:
	spawn_asteroid()
