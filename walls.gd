extends Node2D


func _ready() -> void:
	var screen_size = get_viewport_rect().size
	$Top.position = Vector2(screen_size.x/2, 0)      
	$Bottom.position = Vector2(screen_size.x/2, screen_size.y) 
	$Left.position = Vector2(0, screen_size.y/2)
	$Right.position = Vector2(screen_size.x, screen_size.y/2)
