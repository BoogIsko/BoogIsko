extends Control

func _ready():
	# Load scores here depending on song_score value
	
	pass # Replace with function body.



func _on_back_pressed():
	PlayerData.song_score = "none"
	if get_tree().change_scene('res://main_menu/view_score.tscn') != OK:
		print('ERROR: Faulty target scene')
