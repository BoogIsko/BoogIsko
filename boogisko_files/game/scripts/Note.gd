extends Area2D

const SPAWN_Y = -20
const TARGET_Y = 631
const DIST_TO_TARGET = TARGET_Y - SPAWN_Y

const LEFT_SPAWN = Vector2(166, SPAWN_Y)
const UP_SPAWN = Vector2(305, SPAWN_Y)
const DOWN_SPAWN = Vector2(444, SPAWN_Y)
const RIGHT_SPAWN = Vector2(582, SPAWN_Y)

var velocity = Vector2(0.0, 360.0)
var label_vel = Vector2(0.0, 100.0)
var hit = false

func _ready() -> void:
	$Node2D/AnimatedSprite.visible = false

func _physics_process(delta: float) -> void:
	if !hit:
		self.translate(velocity * delta)
		if position.y > 690:
			queue_free()
	else:
		$Node2D.translate(-label_vel * delta)


func initialize(lane):
	# Left Arrow
	if lane == 0:
		$AnimatedSprite.frame = 0
		$Node2D/AnimatedSprite.animation = "arrow_0_left"
		position = LEFT_SPAWN
	# Up Arrow
	if lane == 1:
		$AnimatedSprite.frame = 1
		$Node2D/AnimatedSprite.animation = "arrow_1_up"
		position = UP_SPAWN
	# Down Arrow
	if lane == 2:
		$AnimatedSprite.frame = 2
		$Node2D/AnimatedSprite.animation = "arrow_2_down"
		position = DOWN_SPAWN
	# Right Arrow
	if lane == 3:
		$AnimatedSprite.frame = 3
		$Node2D/AnimatedSprite.animation = "arrow_3_right"
		position = RIGHT_SPAWN

func destroy(score):
	$AnimatedSprite.visible = false
	$Node2D/AnimatedSprite.visible = true
	$Node2D/AnimatedSprite.play()
	$Timer.start()
	hit = true
	if score == 3:
		$Node2D/Status.text = "PERFECT"
	elif score == 2:
		$Node2D/Status.text = "GOOD"
	elif score == 1:
		$Node2D/Status.text = "OKAY"


func _on_Timer_timeout():
#	$Node2D/Status.text = ""
#	$Node2D/AnimatedSprite.visible = false
	queue_free()
