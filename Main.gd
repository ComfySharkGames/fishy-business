extends Node2D

@onready var transition_sound = $Camera/transition_sound

const STARTING = preload("res://Scenes/fishing/starting.tscn")

const START_FISHING = preload("res://Scenes/fishing/start_fishing.tscn")
const FISHING = preload("res://Scenes/fishing/Fishing.tscn")

const SPEED_UP = preload("res://Scenes/fishing/speed_up.tscn")
const GAME_OVER = preload("res://Scenes/fishing/game_over.tscn")

func _ready():
	SignalBus.gameover_scene.connect(_gameover_scene)
	SignalBus.progress_scene.connect(_progress_scene)
	var starting_tmp = STARTING.instantiate()
	add_child(starting_tmp)
	pass

func _process(delta):
	pass

func _progress_scene(progress: int):
	transition_sound.pitch_scale = randf_range(0.5,1.5)
	match progress:
		0:
			transition_sound.play()
			get_tree().get_root().get_node("Main").get_child(1).queue_free()
			var fishing_tmp = START_FISHING.instantiate()
			add_child(fishing_tmp)
		1:
			transition_sound.play()
			get_tree().get_root().get_node("Main").get_child(1).queue_free()
			var fishing_tmp = FISHING.instantiate()
			add_child(fishing_tmp)
		2:
			#Cleaning Stage
			pass
		3:
			#Selling Stage
			pass
		4:
			transition_sound.play()
			get_tree().get_root().get_node("Main").get_child(1).queue_free()
			Global.round += 1
			var speed_tmp = SPEED_UP.instantiate()
			add_child(speed_tmp)
		5:
			transition_sound.play()
			get_tree().get_root().get_node("Main").get_child(1).queue_free()
			var starting_tmp = STARTING.instantiate()
			add_child(starting_tmp)
	
	pass
	
func _gameover_scene():
	get_tree().get_root().get_node("Main").get_child(1).queue_free()
	var gameover_tmp = GAME_OVER.instantiate()
	add_child(gameover_tmp)
	pass
