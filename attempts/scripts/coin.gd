extends Area2D
@onready var game_manager = %game_manager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	
	animation_player.play("pickup")
	
