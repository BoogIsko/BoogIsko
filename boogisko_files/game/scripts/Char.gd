extends KinematicBody2D


onready var animatedSprite = $AnimatedSprite


func _physics_process(delta):
	
	if PlayerData.character == "male":
		var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		var axisY = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
		if axisX < 0 and axisY == 0:
			animatedSprite.animation = "bRight"
		elif axisX > 0 and axisY == 0:
			animatedSprite.animation = "bLeft"
		elif axisY > 0 and axisX == 0:
			animatedSprite.animation = "bUp"
		elif axisY < 0 and axisX == 0:
			animatedSprite.animation = "bDown"	
		elif axisX > 0 and axisY < 0:
			animatedSprite.animation = "bDownLeft"
		elif axisX < 0 and axisY < 0:
			animatedSprite.animation = "bDownRight"
		elif axisY > 0 and axisX > 0:
			animatedSprite.animation = "bUpLeft"
		elif axisY > 0 and axisX < 0:
			animatedSprite.animation = "bUpRight"	
		else:
			animatedSprite.animation = "bIdle"
	elif PlayerData.character == "female":
		var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		var axisY = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
		if axisX < 0 and axisY == 0:
			animatedSprite.animation = "gRight"
		elif axisX > 0 and axisY == 0:
			animatedSprite.animation = "gLeft"
		elif axisY > 0 and axisX == 0:
			animatedSprite.animation = "gUp"
		elif axisY < 0 and axisX == 0:
			animatedSprite.animation = "gDown"	
		elif axisX > 0 and axisY < 0:
			animatedSprite.animation = "gDownLeft"
		elif axisX < 0 and axisY < 0:
			animatedSprite.animation = "gDownRight"
		elif axisY > 0 and axisX > 0:
			animatedSprite.animation = "gUpLeft"
		elif axisY > 0 and axisX < 0:
			animatedSprite.animation = "gUpRight"	
		else:
			animatedSprite.animation = "gIdle"
	
