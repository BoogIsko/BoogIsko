extends Control

func _ready():
	get_tree().paused = false
	PlayerData.difficulty = "none"
	PlayerData.character = "none"
	PlayerData.song = "none"
	PlayerData.song_score = "none"
	PlayerData.idx = 0
	PlayerData.score = 0
	

func _on_Exit_pressed():
	get_tree().quit()


func _on_SelectMusic_pressed():
	if get_tree().change_scene('res://main_menu/select_music.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_ViewScore_pressed():
	if get_tree().change_scene('res://main_menu/view_score.tscn') != OK:
		print('ERROR: Faulty target scene')
