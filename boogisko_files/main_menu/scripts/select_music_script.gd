extends Control


func _on_Back_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_filler_btn1_pressed():
	if get_tree().change_scene('res://char_diff_select/char_diff_select.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_filler_btn2_pressed():
	if get_tree().change_scene('res://char_diff_select/char_diff_select.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_filler_btn3_pressed():
	if get_tree().change_scene('res://char_diff_select/char_diff_select.tscn') != OK:
		print('ERROR: Faulty target scene')
