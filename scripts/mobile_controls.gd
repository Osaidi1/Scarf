extends CanvasLayer

@onready var buttons: Control = $Buttons
@onready var left: TouchScreenButton = $Buttons/Left
@onready var right: TouchScreenButton = $Buttons/Right
@onready var jump: TouchScreenButton = $Buttons/Jump
@onready var run: TouchScreenButton = $Buttons/Run
@onready var dash: TouchScreenButton = $Buttons/Dash
@onready var attack: TouchScreenButton = $Buttons/Attack
@onready var pause: TouchScreenButton = $Buttons/Pause

func _process(delta: float) -> void:
	if vars.on_mobil:
		buttons.visible = true 
	else:
		buttons.visible = false
	attack.visible = vars.attack_unlocked
	dash.visible = vars.dash_unlocked
