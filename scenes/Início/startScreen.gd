extends Control

func _ready():
	$controls/startBtn.grab_focus()



func _on_startBtn_pressed():
	get_tree().change_scene("res://scenes/Game/Game.tscn")
	


func _on_controlsBtn_pressed():
	var controlScreen = load("res://scenes/Controles/controlsScreen.tscn").instance()
	get_tree().current_scene.add_child(controlScreen)


func _on_quitBtn_pressed():
	get_tree().quit()
