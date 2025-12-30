extends Control
@export var target: Node

var teksti := [
"Evenin'. Haven’t seen you around these parts before. Don’t mind me, I’ve been tendin’ this bar longer than I care to admit… long enough to see people come and go, and all the secrets they leave behind.",
"You look like someone carryin’ a story. Mind if I lend an ear? I’ve learned it’s cheaper than whiskey and just as effective… sometimes more so.",
"A lot of folks come in here thinkin’ a drink can fix things. Truth is, it only makes the weight a little quieter. But don’t worry… whatever’s eatin’ at you, you’re welcome here. Glass in hand or not.",
"Now, tell me… what’s your poison? And don’t lie, I can tell just by the look in your eyes."]
@onready var label: Label = $Panel/Label
var i = -1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _start_window() -> void:
	visible = true

func _on_button_pressed() -> void:
	i += 1

	if i >= teksti.size():
		visible = false
		i = -1
		label.text = "Welcome back!"
		
		# Increase db by 5 once
		if target and not target.has_meta("db_added"):
			target.db += 5
			target.db = min(target.db, target.drunk_bar.max_value)
			target.drunk_bar.value = target.db # update the bar display
			target.set_meta("db_added", true)  # mark it as already set

		return

	label.text = teksti[i]

#sitais komentars testam 2
