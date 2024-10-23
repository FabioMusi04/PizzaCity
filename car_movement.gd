extends CharacterBody2D

var speed = 200
var sprite_sheet : Sprite2D

var car_library = preload("res://car_library.gd")

var base_path = "res://assets/TopDown Vehicles v1.17/"

var sprite_texture : Texture2D

func _ready():
	var car_sprite = car_library.get_car_sprite(car_library.player_car)
	sprite_texture = load(car_sprite) 

	sprite_sheet = $Sprite2D
	if sprite_sheet:
		sprite_sheet.texture = sprite_texture
		update_sprite(Vector2(0, -1))
	
	var car_stats = car_library.get_car_stats(car_library.player_car)
	speed = car_stats["speed"]

func update_sprite(direction: Vector2):
	var frame = 0
	var rounded_direction = direction.round()

	if rounded_direction == Vector2.UP:
		frame = 6
	elif rounded_direction == (Vector2.UP + Vector2.RIGHT):
		frame = 7
	elif rounded_direction == Vector2.RIGHT:
		frame = 0
	elif rounded_direction == (Vector2.DOWN + Vector2.RIGHT):
		frame = 1
	elif rounded_direction == Vector2.DOWN:
		frame = 2
	elif rounded_direction == (Vector2.DOWN + Vector2.LEFT):
		frame = 3
	elif rounded_direction == Vector2.LEFT:
		frame = 4
	elif rounded_direction == (Vector2.UP + Vector2.LEFT):
		frame = 5

	sprite_sheet.frame = frame

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1

	input_vector = input_vector.normalized()
	
	velocity = input_vector * speed
	move_and_slide()

	if input_vector != Vector2.ZERO:
		update_sprite(input_vector)
