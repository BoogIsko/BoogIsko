extends Control

var filepath = "user://best_scores.data"

func _ready():
	# Load scores here depending on song_score value
	var file = File.new()
	var error = file.open(filepath, File.READ)
	if error == OK:
		print("Yes save File")
		load_data()
	# Make defaul values if file does not exist
	else:
		print("No save File")
		make_default()
	file.close()
	label_data()

func make_default():
	var save_file = File.new()
	save_file.open(filepath, File.WRITE)
	save_file.store_var(PlayerData.player_data_scores)
	save_file.close()

func populate(dict):
	var string_format = "%s %15d"
	$Score1.text = string_format % [dict["names"][0], dict["scores"][0]]
	$Score2.text = string_format % [dict["names"][1], dict["scores"][1]]
	$Score3.text = string_format % [dict["names"][2], dict["scores"][2]]

func load_data():
	var file = File.new()
	if file.file_exists(filepath):
		var error = file.open(filepath, File. READ)
		if error == OK:
			PlayerData.player_data_scores = file.get_var()
			file.close()

func label_data():
	populate(PlayerData.player_data_scores[PlayerData.song_score])

func _on_back_pressed():
	PlayerData.song_score = "none"
	if get_tree().change_scene('res://main_menu/view_score.tscn') != OK:
		print('ERROR: Faulty target scene')
