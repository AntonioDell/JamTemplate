extends CharacterBody2D

func _physics_process(delta):
	var _inputs = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		_inputs += Vector2.UP
	if Input.is_action_pressed("ui_down"):
		_inputs += Vector2.DOWN
	if Input.is_action_pressed("ui_right"):
		_inputs += Vector2.RIGHT
	if Input.is_action_pressed("ui_left"):
		_inputs += Vector2.LEFT
	velocity = _inputs.normalized() * 100
	move_and_slide()
