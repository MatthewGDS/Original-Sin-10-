extends CharcaterBody2D

if STATE == "Chase":
		var player = get_parent().get_node("Player")
		var direction = (player.position - self.position).normalized()
		knockback = knockback.move_toward(Vector2.ZERO, FRICTION * delta)
		knockback = move_and_slide(knockback)
		get_node("AnimationSprite").play("Run")
		
	elif STATE == "Idle":
		get_node("AnimationSprite").play("Idle")

func _on_DetectPlayer_body_entered(body):
	if (body.name == "Player"):
		STATE = "Chase"
		
	
func _on_DetectPlayer_body_exited(body):
	if (body.name == "Player"):
		STATE = "Idle"
		
func _on_AttackRange_body_entered(body):
	if (body.name == "Player"):
		get_node("AnimationSprite").play("Attack")
