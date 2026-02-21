extends Node2D

@onready var spawn: Marker2D = $Spawn

func _on_check_body_entered(body: Node2D) -> void:
	if body is Player:
		if global_position.x > vars.player_spawn.x:
			vars.player_spawn = spawn.global_position
			queue_free()
