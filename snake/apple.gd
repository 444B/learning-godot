extends Area2D




func _on_area_entered(area):
	if area.is_in_group("snake-head"):
		queue_free()
		print("game over")