extends Area2D

func _on_World_1_1_Entrance_body_entered(_body):
# warning-ignore:return_value_discarded
	Global.from_world = get_parent().name
	get_tree().change_scene("res://" + self.name + ".tscn")

