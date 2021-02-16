extends Area2D

export(String, FILE, "*.tscn") var cenas

func _on_Passagem_body_entered(body):
	#print("Encostou")
	get_tree().change_scene(cenas)
