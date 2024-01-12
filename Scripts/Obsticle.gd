extends Node
#Preload enemy scene
@onready var enemy = preload("res://Scenes/enemy.tscn")
var random_number = RandomNumberGenerator.new()

func _on_timer_timeout():
	#Run random geneartion process
	var random_position = random_number.randi_range(400,550)
	#Create enemy
	var ENEMY = enemy.instantiate()
	ENEMY.position = Vector2(random_position,496)
	self.add_child(ENEMY)
