extends CharacterBody2D

var max_speed= 200
var last_direction := Vector2(1,0)

#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0


func _physics_process(delta):
	# Add the gravity.
	#player movements
	var direction = Input.get_vector("move_pa_kreisi","move_pa_labi","move_up","move_down")
	velocity = direction * max_speed
	move_and_slide()
	
	if direction.length() > 0:
		last_direction = direction
		play_walk_animation(direction)
		#print(direction)
	else:
		play_idle_animation(last_direction)
		#print(direction)
	
	# ja godīgi nezinu kam šīs līnijas domātas, viņus man iedeva programma, bet tutoriala tādas
	#līnijas nebija unviss iet diezgan labi bez viņām 
	'
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction1 := Input.get_axis("ui_left", "ui_right")
	if direction1:
		velocity.x = direction1 * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	'

# funkcija, kur nosaka pa kurieni iet
func play_walk_animation(direction):
	if direction.x > 0:
		$AnimatedSprite2D.play("walk_pa_labi")
	elif direction.x < 0:
		$AnimatedSprite2D.play("walk_pa_kreisi")
	elif direction.y > 0:
		$AnimatedSprite2D.play("walk_down")
	elif direction.y < 0 :
		$AnimatedSprite2D.play("walk_up")
		
func play_idle_animation(direction):
	if direction.x > 0:
		$AnimatedSprite2D.play("idle_pa_labi")
	elif direction.x < 0:
		$AnimatedSprite2D.play("idle_pa_kreisi")
	elif direction.y > 0:
		$AnimatedSprite2D.play("idle_down")
	elif direction.y < 0 :
		$AnimatedSprite2D.play("idle_up")

@onready var drunk_bar = $drunk_bar
var db = 0 #db= drunk bar

func _ready():
	drunk_bar.value = db
	drunk_bar.max_value = 10

func _on_add_drink_pressed():
	db += 1
	drunk_bar.value = db


func _on_drink_pressed() -> void:
	pass # Replace with function body.
