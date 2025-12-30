extends StaticBody2D

@onready var interactable: Area2D = $interactable
@export var target: Node
@onready var bartender: Sprite2D = $Bartender


func do_call():
	target._start_window()
	
func _ready() -> void:
	interactable.interact = _on_interact

	
func _on_interact():
	if bartender.frame == 0:
		bartender.frame = 1
		
		print("Let's go drinking!")
		do_call()
