extends CharacterBody2D

@onready var sprite = $Sprite2D

var dragging = false

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.is_pressed():
			dragging = sprite.get_rect().has_point(to_local(event.position))
		else:
			dragging = false
	elif event is InputEventScreenDrag and dragging:
		global_position = event.position
