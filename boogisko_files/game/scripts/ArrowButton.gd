extends AnimatedSprite

var isPerfect = false
var isGood = false
var isOkay = false

var cur_note = null

func _unhandled_input(event: InputEvent) -> void:
	if cur_note != null:
		if isPerfect:
			get_parent().increment_score(3)
			cur_note.destroy()

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
