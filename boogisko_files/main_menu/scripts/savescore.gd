extends Control

var filepath = "user://best_scores.data"

func _ready():
	pass

func _on_Quit_pressed():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')

func _on_LineEdit_text_entered(new_text):
	if len(new_text) == 3:
		var score = PlayerData.score
		var idx = PlayerData.idx
		update_scores(new_text, score, idx)
			
		if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
			print('ERROR: Faulty target scene')

func update_scores(new_text, score, idx):
	var hold_name = ""
	var hold_val = 0
	for i in range(idx, 3):
		print(i)
		hold_name = PlayerData.player_data_scores[PlayerData.song]["names"][i]
		hold_val = PlayerData.player_data_scores[PlayerData.song]["scores"][i]
		print(hold_name, hold_val)
		print(new_text, score)
		PlayerData.player_data_scores[PlayerData.song]["names"][i] = new_text
		PlayerData.player_data_scores[PlayerData.song]["scores"][i] = score
		new_text = hold_name
		score = hold_val
	save()

func save():
	var save_file = File.new()
	save_file.open(filepath, File.WRITE)
	save_file.store_var(PlayerData.player_data_scores)
	save_file.close()
