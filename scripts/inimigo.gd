extends Node2D
const SPEED = 60
var DIRECTION = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		DIRECTION = 1
		animated_sprite.flip_h = false
		
	if ray_cast_right.is_colliding():
		DIRECTION = -1
		animated_sprite.flip_h = true
		
	position.x += DIRECTION * SPEED * delta

