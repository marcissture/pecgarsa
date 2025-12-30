extends Node2D
@export var target: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if target.db == 10:
	#get_tree().change_scene_to_file("res://scenes/1_scena.tscn") #Iekavās likt scēnu, kura paigaidām mums nav
	pass

	
func _on_drink_pressed() -> void:
	print("drink pressed")
	pass # Replace with function body.
