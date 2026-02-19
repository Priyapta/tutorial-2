extends Node2D

var asteorid = preload("res://scenes/s_asteroid.tscn")


func _on_timer_timeout() -> void:
	var a = asteorid.instantiate()
	a.position = self.position
	get_parent().add_child(a)
