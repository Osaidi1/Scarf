extends Area2D

@onready var cutscenes: AnimationPlayer = $"../Cutscenes"

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		transition.to_black()
		await get_tree().create_timer(1).timeout
		if vars.on_mobil:
			cutscenes.play("intro2_mobil")
		else:
			cutscenes.play("intro2")
		transition.to_normal()
