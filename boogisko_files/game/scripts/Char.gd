extends KinematicBody2D


onready var animatedSprite = $AnimatedSprite
var animation_str
var animation_playing = false

func _ready():
	if PlayerData.character == "male":
		animation_str = "bIdle"
	else:
		animation_str = "gIdle"
	animatedSprite.animation = animation_str
	
func _physics_process(delta):
	animatedSprite.speed_scale = 0.5
	
	if PlayerData.character == "male":
		var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		var axisY = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
		if axisX < 0 and axisY == 0:
			animation_str = "bRight"
			animation_playing = true
		elif axisX > 0 and axisY == 0:
			animation_str = "bLeft"
			animation_playing = true
		elif axisY > 0 and axisX == 0:
			animation_str = "bUp"
			animation_playing = true
		elif axisY < 0 and axisX == 0:
			animation_str = "bDown"
			animation_playing = true
		elif axisX > 0 and axisY < 0:
			animation_str = "bDownLeft"
			animation_playing = true
		elif axisX < 0 and axisY < 0:
			animation_str = "bDownRight"
			animation_playing = true
		elif axisY > 0 and axisX > 0:
			animation_str = "bUpLeft"
			animation_playing = true
		elif axisY > 0 and axisX < 0:
			animation_str = "bUpRight"
			animation_playing = true
			
		if animation_str != "bIdle" and animatedSprite.frame == 5:
			animatedSprite.stop()
			animation_playing = false
			animation_str = "bIdle"
			animatedSprite.play(animation_str)
		elif animation_playing:
			animatedSprite.play(animation_str)
		
	elif PlayerData.character == "female":
		var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		var axisY = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
		if axisX < 0 and axisY == 0:
			animation_str = "gRight"
			animation_playing = true
		elif axisX > 0 and axisY == 0:
			animation_str = "gLeft"
			animation_playing = true
		elif axisY > 0 and axisX == 0:
			animation_str = "gUp"
			animation_playing = true
		elif axisY < 0 and axisX == 0:
			animation_str = "gDown"
			animation_playing = true
		elif axisX > 0 and axisY < 0:
			animation_str = "gDownLeft"
			animation_playing = true
		elif axisX < 0 and axisY < 0:
			animation_str = "gDownRight"
			animation_playing = true
		elif axisY > 0 and axisX > 0:
			animation_str = "gUpLeft"
			animation_playing = true
		elif axisY > 0 and axisX < 0:
			animation_str = "gUpRight"
			animation_playing = true
			
		if animation_str != "gIdle" and animatedSprite.frame == 5:
			animatedSprite.stop()
			animation_playing = false
			animation_str = "gIdle"
			animatedSprite.play(animation_str)
		elif animation_playing:
			animatedSprite.play(animation_str)
	
