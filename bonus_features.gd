extends Node2D

@onready var select_sound = $select_sound

func _on_catalogue_btn_button_down():
	select_sound.play()
	pass 

func _on_catalogue_btn_button_up():
	SignalBus.progress_scene.emit(8)
	pass 

func _on_back_btn_button_down():
	select_sound.play()
	pass 

func _on_back_btn_button_up():
	SignalBus.progress_scene.emit(5)
	pass
