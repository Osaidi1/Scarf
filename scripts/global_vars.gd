extends Node

@export var dash_unlocked := false
@export var dash_stamina := true
@export var wall_slide_jump_unlocked := false
@export var wall_slide_jump_stamina := true
@export var attack_unlocked := false
@export var attack_2_unlocked := true
@export var attack_3_unlocked := true
@export var attack_stamina := true

var cut_played := false
var in_water: bool
var level := 1
var player_spawn := Vector2(-134, 658)
var spike_hurt: bool
var on_mobil := true
var pause := false
var is_mobile_running: bool
