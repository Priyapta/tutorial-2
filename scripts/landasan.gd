extends StaticBody2D
@export var distance: float = 100.0   # jarak maju-mundur
@export var speed: float = 200.0       # kecepatan

var start_pos: Vector2
var direction := 1

func _ready() -> void:
	start_pos = global_position

func _physics_process(delta: float) -> void:
	global_position.x += speed * direction * delta

	if global_position.x > start_pos.x + distance:
		direction = -1
	elif global_position.x < start_pos.x - distance:
		direction = 1
