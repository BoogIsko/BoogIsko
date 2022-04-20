extends Node2D

var score = 0
var lane = 0
var note = load("res://game/Note.tscn")
var instance
var song_position_in_beats = 0
var spawn_beat = 1
var diff_choice = PlayerData.difficulty

func _ready() -> void:
	get_tree().paused = false
	var song_choice = PlayerData.song
	var bpm
	var beat_offsets = [4, 2, 3]
	
	if diff_choice == "easy":
		bpm = 60
	elif diff_choice == "medium":
		bpm = 120
		beat_offsets[0] = 5
		beat_offsets[2] = 5
	elif diff_choice == "hard":
		bpm = 160
		beat_offsets[0] = 7
		beat_offsets[1] = 1
		beat_offsets[2] = 5
	
	if song_choice == "sunny":
		$Conductor1.play_with_beat_offset(beat_offsets[0], bpm)
	elif song_choice == "smile":
		$Conductor2.play_with_beat_offset(beat_offsets[1], bpm)
	elif song_choice == "bliss":
		$Conductor3.play_with_beat_offset(beat_offsets[2], bpm)
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
	if song_position_in_beats > 130 and diff_choice == "easy":
		spawn_beat = 0
	elif song_position_in_beats > 257 and diff_choice == "medium":
		spawn_beat = 0
	elif song_position_in_beats > 344 and diff_choice == "hard":
		spawn_beat = 0


func _on_Conductor1_measure(position):
	_spawn_notes(spawn_beat)


func _on_Conductor2_beat2(position):
	song_position_in_beats = position
	if song_position_in_beats > 194 and diff_choice == "easy":
		spawn_beat = 0
	elif song_position_in_beats > 386 and diff_choice == "medium":
		spawn_beat = 0
	elif song_position_in_beats > 512 and diff_choice == "hard":
		spawn_beat = 0


func _on_Conductor2_measure2(position):
	_spawn_notes(spawn_beat)


func _on_Conductor3_beat3(position):
	song_position_in_beats = position
	if song_position_in_beats > 203 and diff_choice == "easy":
		spawn_beat = 0
	elif song_position_in_beats > 408 and diff_choice == "medium":
		spawn_beat = 0
	elif song_position_in_beats > 538 and diff_choice == "hard":
		spawn_beat = 0


func _on_Conductor3_measure3(position):
	_spawn_notes(spawn_beat)
