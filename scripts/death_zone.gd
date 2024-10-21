extends Area2D

@export var z1z2 = "z1"
const BallClass = preload("res://scripts/ball.gd")

signal gain_score()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is BallClass:
		emit_signal("gain_score")
		body.queue_free()
		
