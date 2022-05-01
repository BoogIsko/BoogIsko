extends Control



func _on_Back_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')

# song_score variable is to tell the scoreboard which scores to display
func _on_sunny_pressed():
	PlayerData.song_score = "sunny"
	if get_tree().change_scene('res://main_menu/scoreboard.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_smile_pressed():
	PlayerData.song_score = "smile"
	if get_tree().change_scene('res://main_menu/scoreboard.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_bliss_pressed():
	PlayerData.song_score = "bliss"
	if get_tree().change_scene('res://main_menu/scoreboard.tscn') != OK:
		print('ERROR: Faulty target scene')
