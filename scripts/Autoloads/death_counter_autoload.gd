extends Node2D


static var death_counter:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	death_counter = 0

func add_death_counter() -> void:
	death_counter += 1

func return_death_counter() -> int:
	return death_counter
