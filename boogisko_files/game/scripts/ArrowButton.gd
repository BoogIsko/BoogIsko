extends AnimatedSprite

var isPerfect = false
var isGood = false
var isOkay = false

var cur_note = null
export var input = ""

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action(input):
		if event.is_action_pressed(input, false):
			if cur_note != null:
				if isPerfect:
					get_parent().increment_score(3)
					cur_note.destroy(3)
				elif isGood:
					get_parent().increment_score(2)
					cur_note.destroy(2)
				elif isOkay:
					get_parent().increment_score(1)
					cur_note.destroy(1)
				_reset()
			else:
				get_parent().increment_score(0)

func _on_PerfectArea_area_entered(area: Area2D) -> void:
	if area.is_in_group("note"):
		isPerfect = true


func _on_PerfectArea_area_exited(area: Area2D) -> void:
	if area.is_in_group("note"):
		isPerfect = false


func _on_GoodArea_area_entered(area: Area2D) -> void:
	if area.is_in_group("note"):
		isGood = true


func _on_GoodArea_area_exited(area: Area2D) -> void:
	if area.is_in_group("note"):
		isGood = false

func _on_OkayArea_area_entered(area: Area2D) -> void:
	if area.is_in_group("note"):
		isOkay = true
		cur_note = area


func _on_OkayArea_area_exited(area: Area2D) -> void:
	if area.is_in_group("note"):
		isOkay = false
		cur_note = null

func _reset():
	cur_note = null
	isPerfect = false
	isGood = false
	isOkay = false
