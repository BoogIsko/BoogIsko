extends Control

onready var diff_selected: bool = false
onready var char_selected: bool = false

func _ready():
	$Start.disabled = true

func _process(delta):
	if (diff_selected and char_selected):
		$Start.disabled = false

func _on_Back_pressed():
	PlayerData.difficulty = "none"
	PlayerData.character = "none"
	if get_tree().change_scene('res://main_menu/select_music.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_Easy_toggled(button_pressed):
	if (button_pressed):
		PlayerData.difficulty = "easy"
		diff_selected = true


func _on_Medium_toggled(button_pressed):
	if (button_pressed):
		PlayerData.difficulty = "medium"
		diff_selected = true


func _on_Hard_toggled(button_pressed):
	if (button_pressed):
		PlayerData.difficulty = "hard"
		diff_selected = true


func _on_Start_pressed():
	if get_tree().change_scene('res://game_screen/game_screen.tscn') != OK:
		print('ERROR: Faulty target scene')


func _on_Male_toggled(button_pressed):
	if (button_pressed):
		PlayerData.character = "male"
		char_selected = true

func _on_Female_toggled(button_pressed):
	if (button_pressed):
		PlayerData.character = "female"
		char_selected = true
