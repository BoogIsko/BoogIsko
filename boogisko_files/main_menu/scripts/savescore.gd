extends Control

func _ready():
	pass

func _on_Quit_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_LineEdit_text_entered(new_text):
	if len(new_text) == 3:
		var score = PlayerData.score
		var idx = PlayerData.idx
		if PlayerData.song == "sunny":
			PlayerData.sunny_scores[idx] = score
			PlayerData.sunny_players[idx] = new_text
		elif PlayerData.song == "smile":
			PlayerData.smile_scores[idx] = score
			PlayerData.smile_players[idx] = new_text
		elif PlayerData.song == "bliss":
			PlayerData.bliss_scores[idx] = score
			PlayerData.bliss_players[idx] = new_text
			
		if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
			print('ERROR: Faulty target scene')
