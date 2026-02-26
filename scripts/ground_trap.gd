extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var player: Player = $Player
@onready var sound: AudioStreamPlayer2D = $Sound

func _ready() -> void:
	$detector.monitoring = true

func _on_hurt_body_entered(body: Node2D) -> void:
	if body is Player:
		vars.spike_hurt = true

func _on_detector_body_entered(body: Node2D) -> void:
	if body is Player:
		animation_player.play("reveal")
		sound.play()
		$detector.set_deferred("monitoring", false)
