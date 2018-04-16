extends KinematicBody2D


var GRAV = 10;





func _physics_process(delta):
	
	position.y += GRAV;
	if Input.is_action_pressed("ui_left"):
		position.x -= 150 * delta;
	if Input.is_action_pressed("ui_right"):
		position.x += 150 * delta;
	if Input.is_action_just_pressed("ui_jump"):
		position.y -= 10 * GRAV;


