extends Node2D

@onready var p1_score = 0
@onready var p2_score = 0
@onready var Menu = preload("res://scenes/menu.tscn")
@onready var Ball = preload("res://scenes/ball.tscn")
@onready var startPos = $StartPos

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_ball()
	#ball.global_position = startPos.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("esc"):
		var menu = Menu.instantiate()
		add_child(menu)
		print(global_position)
		print(position)
		#menu.global_position = Vector2.ZERO
		#menu.update_transform

func _on_death_zone_gain_score() -> void:
	p2_score += 1
	var label2 = get_node("ScoreBoard/P2")
	label2.set_text("P2: "+str(p2_score))
	start_ball()

func _on_death_zone_2_gain_score() -> void:
	
	p1_score += 1
	var label1 = get_node("ScoreBoard/P1")
	label1.set_text("P1: "+str(p1_score))
	start_ball()

func start_ball():
	var ball = Ball.instantiate()
	add_child(ball)
	ball.global_position = startPos.position
	ball.velocity = ball.start_velocity
	
