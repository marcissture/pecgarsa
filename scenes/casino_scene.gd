extends Control

@onready var casino_game: CanvasLayer = $CasinoGame
@onready var label: Label = $CasinoGame/Panel/Label
@export var target: Node

func _ready() -> void:
	casino_game.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	

func _start_window() -> void:
	casino_game.visible = true
	label.text = "Let's go gambling!!!"


func _on_gamble_pressed() -> void:
	print("Aw, dang it!")
	label.text = "Rolling..."
	await get_tree().create_timer(2.0).timeout
	label.text = "You Lost. Aw, dang it!"
	target._on_add_drink_pressed()


func _on_end_pressed() -> void:
	casino_game.visible = false
