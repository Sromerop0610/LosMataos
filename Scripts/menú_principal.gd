extends Control

@onready var play_button = $PlayButton
@onready var options_button = $OptionsButton
@onready var quit_button = $QuitButton
@onready var creditos_button = $CreditosButton

@onready var creditos = $Creditos
@onready var botones_menu = $BotonesMenu
@onready var help_layer = $HelpLayer

func _on_quit_button_pressed():
	get_tree().quit()

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _ready():
	if OS.get_name() == "Web":
		quit_button.hide()
	Puntos.fase = 0

func _on_volver_pressed():
	creditos.hide()
	botones_menu.show()

func _on_creditos_button_pressed():
	botones_menu.hide()
	creditos.show()


func _on_options_button_pressed():
	help_layer.show()
	
