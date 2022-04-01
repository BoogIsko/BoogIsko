extends Control


func _on_Back_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')

func change_scene():
	if get_tree().change_scene('res://char_diff_select/char_diff_select.tscn') != OK:
		print('ERROR: Faulty target scene')

func _on_Sunny_pressed():
	PlayerData.song = "sunny"
	change_scene()

func _on_Smile_pressed():
	PlayerData.song = "smile"
	change_scene()


func _on_Bliss_pressed():
	PlayerData.song = "bliss"
	change_scene()
