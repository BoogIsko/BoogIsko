extends KinematicBody2D

onready var _animated_sprite = $AnimatedSprite

func _process(_delta):
	if Input.is_action_pressed("pressed_left"):
		_animated_sprite.play("left")
	elif Input.is_action_pressed("pressed_up"):
		_animated_sprite.play("up")
	elif Input.is_action_pressed("pressed_down"):
		_animated_sprite.play("down")
	elif Input.is_action_pressed("pressed_right"):
		_animated_sprite.play("right")
	else:
		_animated_sprite.play("rest")
