extends RigidBody2D

const SPEED = 100
export (int) var jump;
var dir = Vector2()


func _process(delta):
	
	if Input.is_action_pressed("ui_left"):
		position.x -=  5
		$AnimatedSprite.play();
	elif Input.is_action_pressed("ui_right"):
		position.x +=  5
		$AnimatedSprite.play();
	elif Input.is_action_just_pressed("ui_jump"):
		position.y -= jump
	else:
		$AnimatedSprite.stop();
	
		