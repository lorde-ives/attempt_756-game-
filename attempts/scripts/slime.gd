extends Node2D

const SPEED = 60

var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_down: RayCast2D = $RayCastDown

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_down.is_colliding():
		if ray_cast_right.is_colliding():
			direction = -1
			
			#FLIPPING THE SPRITE
			animated_sprite_2d.flip_h = true
		if ray_cast_left.is_colliding():
			direction = 1
			animated_sprite_2d.flip_h = false
	else:
		if direction == 1:
			direction = -1
			#FLIPPING THE SPRITE
			animated_sprite_2d.flip_h = true
		elif direction == -1:
			direction = 1
			animated_sprite_2d.flip_h = false
	position.x += direction * SPEED * delta
	
