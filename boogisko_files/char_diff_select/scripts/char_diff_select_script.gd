extends Control



func _on_Back_pressed():
	if get_tree().change_scene('res://main_menu/select_music.tscn') != OK:
		print('ERROR: Faulty target scene')
