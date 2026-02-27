extends Area2D

@onready var the_end: Label = $"../Text/The End"
@onready var at_least_for_now: Label = $"../Text/at least for now"
@onready var credits: Label = $"../Text/Credits"
@onready var final_text: AnimationPlayer = $"../Final text"

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		transition.to_black()
		await get_tree().create_timer(2).timeout
		#Fin
		
		for i in range(7):
			the_end.visible_characters += 1
			await get_tree().create_timer(0.025).timeout
		await get_tree().create_timer(3).timeout
		for i in range(7):
			the_end.visible_characters -= 1
			await get_tree().create_timer(0.025).timeout
		await get_tree().create_timer(2).timeout
		
		# at least for now
		
		for i in range(18):
			at_least_for_now.visible_characters += 1
			await get_tree().create_timer(0.02).timeout
		await get_tree().create_timer(4).timeout
		for i in range(18):
			at_least_for_now.visible_characters -= 1
			await get_tree().create_timer(0.02).timeout
		await get_tree().create_timer(2).timeout
		
		#Credits
		
		for i in range(217):
			credits.visible_characters += 1
			await get_tree().create_timer(0.02).timeout
		await get_tree().create_timer(5).timeout
		for i in range(217):
			credits.visible_characters -= 1
			await get_tree().create_timer(0.02).timeout
		await get_tree().create_timer(2).timeout
		
		#Bye
		
		final_text.play("scarf")
		await get_tree().create_timer(4).timeout
		
		#Reset Values
		vars.dash_unlocked = false
		vars.wall_slide_jump_unlocked = false
		vars.attack_unlocked = false
		vars.in_water = false
		vars.player_spawn = Vector2(-134, 658)
		vars.spike_hurt = false
		
		#End
		
		get_tree().change_scene_to_file("res://ui/main_menu.tscn")
		transition.to_normal()
