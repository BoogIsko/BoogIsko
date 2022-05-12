extends Node

var filepath = "user://best_scores.data"

func _ready():
	pass

func main_menu():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')
		
func save_score():
	if get_tree().change_scene('res://main_menu/savescore.tscn') != OK:
		print('ERROR: Faulty target scene')

# Check if a score obtained is a high score
func _on_Conductor1_finished():
	var good_score = 0
	load_data()
	for i in range(3):
		if $Game.score > PlayerData.player_data_scores[PlayerData.song]["scores"][i]:
			PlayerData.idx = i
			PlayerData.score = $Game.score
			good_score = 1
			break
			
	# This was the only way to make transition to save score 
	# work for some reason
	if good_score:
		save_score()
	else:
		main_menu()


func _on_Conductor2_finished():
	var good_score = 0
	load_data()
	for i in range(3):
		if $Game.score > PlayerData.player_data_scores[PlayerData.song]["scores"][i]:
			PlayerData.idx = i
			PlayerData.score = $Game.score
			good_score = 1
			break
	
	if good_score:
		save_score()
	else:
		main_menu()


func _on_Conductor3_finished():
	var good_score = 0
	load_data()
	for i in range(3):
		if $Game.score > PlayerData.player_data_scores[PlayerData.song]["scores"][i]:
			PlayerData.idx = i
			PlayerData.score = $Game.score
			good_score = 1
			break
	
	if good_score:
		save_score()
	else:
		main_menu()


func load_data():
	var file = File.new()
	if file.file_exists(filepath):
		var error = file.open(filepath, File. READ)
		if error == OK:
			PlayerData.player_data_scores = file.get_var()
			file.close()
