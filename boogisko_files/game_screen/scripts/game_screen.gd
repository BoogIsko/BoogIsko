extends Node

func _ready():
	pass

func change_scene():
	if get_tree().change_scene('res://main_menu/main_menu.tscn') != OK:
		print('ERROR: Faulty target scene')

func _on_Conductor1_finished():
	change_scene()


func _on_Conductor2_finished():
	change_scene()


func _on_Conductor3_finished():
	change_scene()
