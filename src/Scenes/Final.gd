extends Control


#Chama o menu inicial
func _on_Menu_pressed():
	get_tree().change_scene("res://src/Scenes/Menu.tscn")
