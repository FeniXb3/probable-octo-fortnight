class_name GameState
extends Resource

@export var first_choice: int
@export var save_path: String

func save():
	ResourceSaver.save(self, save_path)
	
