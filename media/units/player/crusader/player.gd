extends KinematicBody2D


export (int) var jump;
export (int) var speed;
const GRAVITATION = 20;
const RESISTANCE = Vector2(0, -1)

var dir = Vector2()



func _physics_process(delta):
	dir.y += GRAVITATION;
	if Input.is_action_pressed("ui_left"):
		dir.x = -speed
		#$AnimatedSprite.play();
	elif Input.is_action_pressed("ui_right"):
		dir.x = speed
		#$AnimatedSprite.play();
	move_and_slide(dir,RESISTANCE)
	
		