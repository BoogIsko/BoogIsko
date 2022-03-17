extends Node2D

var score = 0
var lane = 0
var note = load("res://game/Note.tscn")
var instance

func _ready() -> void:
	var timer = Timer.new()
	timer.set_wait_time(.5)
	timer.set_one_shot(false)
	timer.connect("timeout", self, "_spawn_notes")
	add_child(timer)
	timer.start()

func _spawn_notes():
	lane = randi() % 4
	instance = note.instance()
	instance.initialize(lane)
	add_child(instance)
