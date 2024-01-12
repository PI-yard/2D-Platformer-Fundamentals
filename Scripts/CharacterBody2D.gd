extends CharacterBody2D

func _process(delta):
	$AnimatedSprite2D.play()
	$AnimatedSprite2D.animation = "run"
	#Add gravity
	if not is_on_floor():
		velocity.y += 20
		$AnimatedSprite2D.stop()
	#Add Jump
	if Input.is_action_pressed("Jump") && is_on_floor():
		velocity.y -= 600
	#Add left and right movement
	var direction = Input.get_axis("ui_left","ui_right")
	velocity.x = 200 * direction
	move_and_slide()

	
