extends Node2D

@export var speed = 550
var current_speed = 0

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var marker_2d: Marker2D = $Marker2D
@onready var detetector: Area2D = $detector
@onready var hurtbox: CollisionPolygon2D = $hurt/hurt/collision
@onready var hurt: Node2D = $hurt
@onready var sprite_2d: Sprite2D = $hurt/Sprite2D

func _ready() -> void:
	detetector.monitoring = true
	$hurt/hurt/collision.disabled = true

func _physics_process(delta: float) -> void:
	hurt.position.y += current_speed * delta
	if hurt.position.y >= marker_2d.position.y + 30:
		current_speed = 0
		await get_tree().create_timer(0.01).timeout
		hurt.position.y = marker_2d.position.y + 30
		$hurt/hurt/collision.disabled = false

func _on_detector_body_entered(body: Node2D) -> void:
	if body is Player:
		animation_player.play("shakeandfall")
		print("here")

func fall():
	print("here")
	current_speed = speed

func destroy():
	queue_free()

func _on_hurt_body_entered(body: Node2D) -> void:
	if body is Player:
		vars.spike_hurt = true
