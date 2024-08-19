extends Node2D

@onready var select_sound = $select_sound

func _ready():
	Global.score = 0
	Global.round = 0
	pass

func _on_option_btn_button_up():
	pass

func _on_start_btn_button_up():
	SignalBus.progress_scene.emit(0)
	pass 

func _on_howtoplay_btn_button_up():
	pass

func _on_howtoplay_btn_button_down():
	select_sound.play()
	pass 


func _on_start_btn_button_down():
	select_sound.play()
	pass 


func _on_option_btn_button_down():
	select_sound.play()
	pass
