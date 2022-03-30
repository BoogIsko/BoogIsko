extends Node2D

var score = 0
var lane = 0
var note = load("res://game/Note.tscn")
var instance
var song_position_in_beats = 0
var spawn_beat = 1

func _ready() -> void:
	var song_choice = PlayerData.song
	if song_choice == "sunny":
		$Conductor1.play_with_beat_offset(4, 60)
	elif song_choice == "smile":
		$Conductor2.play_with_beat_offset(2, 60)
	elif song_choice == "bliss":
		$Conductor3.play_with_beat_offset(3, 60)
	else:
		print("Error in song selection")

func increment_score(weight):
	score += weight
	$Score.text = str(score)
	
func _spawn_notes(spawn):
	if spawn > 0:
		lane = randi() % 4
		instance = note.instance()
		instance.initialize(lane)
		add_child(instance)


func _on_Conductor1_beat(position):
	song_position_in_beats = position
	if song_position_in_beats > 130:
		spawn_beat = 0


func _on_Conductor1_measure(position):
	_spawn_notes(spawn_beat)


func _on_Conductor2_beat2(position):
	song_position_in_beats = position
	if song_position_in_beats > 194:
		spawn_beat = 0


func _on_Conductor2_measure2(position):
	_spawn_notes(spawn_beat)


func _on_Conductor3_beat3(position):
	song_position_in_beats = position
	if song_position_in_beats > 203:
		spawn_beat = 0


func _on_Conductor3_measure3(position):
	_spawn_notes(spawn_beat)
