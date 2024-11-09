extends CharacterBody2D

var speed: int = 100
var direction: Vector2 = Vector2.ZERO


func _process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	
	velocity = speed * direction.normalized()
	move_and_slide()
