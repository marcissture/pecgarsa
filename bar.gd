extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	print('start pressed')
	get_tree().change_scene_to_file("res://scenes/1_scena.tscn") #Iekavās likt scēnu, kura paigaidām mums nav


func _on_option_pressed() -> void:	print('option pressed')


func _on_exit_pressed() -> void:
	print('exit pressed')
	get_tree().quit()
