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
		file.close()
		make_default()

func make_default():
	var save_file = File.new()
	save_file.open(filepath, File.WRITE)
	var default_scores = {
		"sunny" : {
			"high_name1" : "AAA",
			"high_name2" : "AAA",
			"high_name3" : "AAA",
			"high_score1" : 0,
			"high_score2" : 0,
			"high_score3" : 0
		},
		
		"smile" : {
			"high_name1" : "AAA",
			"high_name2" : "AAA",
			"high_name3" : "AAA",
			"high_score1" : 0,
			"high_score2" : 0,
			"high_score3" : 0
		},
		
		"bliss" : {
			"high_name1" : "AAA",
			"high_name2" : "AAA",
			"high_name3" : "AAA",
			"high_score1" : 0,
			"high_score2" : 0,
			"high_score3" : 0
		}
	}
	save_file.store_var(default_scores)
	save_file.close()
	populate(default_scores[PlayerData.song_score])

func populate(dict):
	var string_format = "%s %15d"
	$Score1.text = string_format % [dict["high_name1"], dict["high_score1"]]
	$Score2.text = string_format % [dict["high_name2"], dict["high_score2"]]
	$Score3.text = string_format % [dict["high_name3"], dict["high_score3"]]

func load_data():
	var file = File.new()
	if file.file_exists(filepath):
		var error = file.open(filepath, File. READ)
		if error == OK:
			var data_loaded = file.get_var()
			file.close()
			populate(data_loaded[PlayerData.song_score])

func parse_file():
	pass


func _on_back_pressed():
	PlayerData.song_score = "none"
	if get_tree().change_scene('res://main_menu/view_score.tscn') != OK:
		print('ERROR: Faulty target scene')
