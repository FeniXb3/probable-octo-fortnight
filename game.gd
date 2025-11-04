extends Node2D

@export var game_state: GameState


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(game_state.first_choice)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_left"):
		game_state.first_choice = -1
		print(game_state.first_choice)
	elif Input.is_action_just_pressed("ui_right"):
		game_state.first_choice = 1
		print(game_state.first_choice)
	elif Input.is_action_just_pressed("save"):
		game_state.save()
