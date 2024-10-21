extends CanvasLayer

#need a canvas layer as a parent of the control node, otherwise the position won't be correct


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_pressed() -> void:
	get_tree().quit() # Replace with function body.


func _on_return_pressed() -> void:
	queue_free() # Replace with function body.
