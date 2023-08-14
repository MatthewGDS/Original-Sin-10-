extends KinematicBody2D

onready var swordHitbox = $HitboxPivot/SwordHitbox
onready var hurtbox = $Hurtbox

var velocity = Vector2(1, 0)
var speed = 420

func _physics_process(delta):
	
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)
	
	
