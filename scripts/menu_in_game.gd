extends Control




func _on_button_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/node.tscn")
	


func _on_button_exit_pressed() -> void:
	get_tree().quit() 
