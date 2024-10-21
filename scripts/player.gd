extends RigidBody2D

@export var speed = 10
@export var p1p2 = "p1"


#const CustomClass = preload("res://scripts/ball.gd")
@onready var velocity = Vector2(0,speed)
@onready var p1_score = 0
@onready var p2_score = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	##print(global_position)
	#if Input.is_action_pressed(p1p2 + "_up"):
		#global_position.y -= speed
	#elif Input.is_action_pressed(p1p2 + "_down"):
		#global_position.y += speed


func _physics_process(delta):
	#the bar is still moving slowly without user input
	if Input.is_action_pressed(p1p2 + "_up"):
		global_position.y -= speed
	elif Input.is_action_pressed(p1p2 + "_down"):
		global_position.y += speed	
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		velocity.x = 0
#func hit_wall(y: int):
	#if y < 100:	
		#global_position.y = y+100 #100>player's height, otherwise the hitwall function only calls once and the player is not pushed back far enough
	#elif y > 200:        # to decide if up wall or bottom wall by two arbitrary numbers
		#global_position.y = y-100
