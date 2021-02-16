extends Control


#Inicia o jogo.
func _on_Start_pressed():
	get_tree().change_scene("res://src/Levels/Word.tscn")

#Sai do jogo.
func _on_Quit_pressed():
	get_tree().quit()
