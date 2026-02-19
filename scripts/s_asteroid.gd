extends CharacterBody2D

@export var speed: float = 400.0

func _physics_process(delta: float) -> void:
	velocity.x = -speed
	move_and_slide()




func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		get_tree().call_deferred("change_scene_to_file", "res://scenes/menu_in_game.tscn")
