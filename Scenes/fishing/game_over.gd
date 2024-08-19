extends Node2D

@onready var score_label = $gameover_screen/score_label
@onready var gameover_sound = $gameover_sound
@onready var select_sound = $select_sound

# Called when the node enters the scene tree for the first time.
func _ready():
	gameover_sound.play()
	score_label.text = str(Global.score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_mainmenu_btn_button_down():
	select_sound.play()
	pass 
	
func _on_mainmenu_btn_button_up():
	SignalBus.progress_scene.emit(5)
	pass 
