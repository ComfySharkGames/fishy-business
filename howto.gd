extends Node2D

@onready var select_sound = $select_sound

func _on_back_btn_button_up():
	SignalBus.progress_scene.emit(5)
	pass # Replace with function body.


func _on_back_btn_button_down():
	select_sound.play()
	pass # Replace with function body.
