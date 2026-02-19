extends Control

@onready var button_start = $VBoxContainer/Button
@onready var button_exit = $VBoxContainer/Button2
func _ready() -> void:
	pass



func _on_button_pressed() -> void:
	print("Start ditekan!") 
	get_tree().change_scene_to_file("res://scenes/node.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()
