extends Area2D

func _on_Entrance_body_entered(_body):
# warning-ignore:return_value_discarded
	Global.from_world = get_parent().name
	SceneTransition.change_scene("res://World 1/World 1 (1).tscn")
