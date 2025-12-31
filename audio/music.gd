extends Node
@onready var audioPlayer := AudioStreamPlayer.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(audioPlayer)
	audioPlayer.bus = "Music"
	audioPlayer.stream = preload("res://audio/soundtrack.ogg")
	audioPlayer.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
