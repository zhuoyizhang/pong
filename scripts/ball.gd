extends RigidBody2D

@export var speed = 40
var start_velocity = Vector2(-6,12) * speed
@onready var velocity = start_velocity


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contact_monitor = true # Replace with function body.
	max_contacts_reported = 6

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#global_position.x += velocity.x
	#global_position.y += velocity.y
	
	#print(global_position)


func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())

#func hit_wall():
	#print("ball hit wall")
	#var delta = get_physics_process_delta_time()
	#var collision_info = move_and_collide(velocity * delta)
	#print(delta)
	#if collision_info:
		#velocity = velocity.bounce(collision_info.get_normal())
