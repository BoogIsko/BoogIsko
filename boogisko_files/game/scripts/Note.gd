extends Area2D

const SPAWN_Y = -20
const LEFT_SPAWN = Vector2(424, SPAWN_Y)
const UP_SPAWN = Vector2(567, SPAWN_Y)
const DOWN_SPAWN = Vector2(701, SPAWN_Y)
const RIGHT_SPAWN = Vector2(842, SPAWN_Y)

var velocity = Vector2(0.0, 400.0)

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	self.translate(velocity * delta)


func initialize(lane):
	# Left Arrow
	if lane == 0:
		$AnimatedSprite.frame = 0
		position = LEFT_SPAWN
	# Up Arrow
	if lane == 1:
		$AnimatedSprite.frame = 1
		position = UP_SPAWN
	# Down Arrow
	if lane == 2:
		$AnimatedSprite.frame = 2
		position = DOWN_SPAWN
	# Right Arrow
	if lane == 3:
		$AnimatedSprite.frame = 3
		position = RIGHT_SPAWN

func destroy():
	$AnimatedSprite.visible = false
