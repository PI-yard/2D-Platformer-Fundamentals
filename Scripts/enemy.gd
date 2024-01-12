extends StaticBody2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 400 * delta

func _on_area_2d_body_entered(body):
	if "Player" in body.name:
		body.queue_free()
