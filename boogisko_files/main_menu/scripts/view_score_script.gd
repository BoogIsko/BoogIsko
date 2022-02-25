extends Control



func _on_Back_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')
