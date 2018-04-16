extends RigidBody2D

const SPEED = 100
var dir = Vector2()


func _process(delta):
	
	if Input.is_action_pressed("ui_left"):
		position.x -=  2
		$AnimatedSprite.play();
	elif Input.is_action_pressed("ui_right"):
		position.x +=  2
		$AnimatedSprite.play();
	else:
		$AnimatedSprite.stop();
	
		