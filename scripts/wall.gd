extends StaticBody2D
#
#const PlayerClass = preload("res://scripts/player.gd")
#const BallClass = preload("res://scripts/ball.gd")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#
#func _on_body_entered(body: Node2D) -> void:
	#print(body.get_class().get_basename())
	#if body is PlayerClass:
		#body.hit_wall(global_position.y) 
	#elif body is BallClass:# Replace with function body.
		#body.hit_wall()
