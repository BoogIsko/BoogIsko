extends AnimatedSprite

var isPerfect = false
var isGood = false
var isOkay = false

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


func _on_OkayArea_area_exited(area: Area2D) -> void:
	if area.is_in_group("note"):
		isOkay = false
