extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var pause_state = not get_tree().paused
		get_tree().paused = pause_state
		visible = pause_state


func _on_Resume_pressed():
	get_tree().paused = false
	visible = false

func _on_Quit_pressed():
	visible = false
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')
