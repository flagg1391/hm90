extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	velocity = input_vector.normalized() * 300
	
	move_and_slide()
