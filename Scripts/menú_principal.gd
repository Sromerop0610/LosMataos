extends Control

@onready var play_button = $BotonesMenu/PlayButton
@onready var options_button = $BotonesMenu/OptionsButton
@onready var quit_button = $BotonesMenu/QuitButton
@onready var volver = $Creditos/Volver

@onready var creditos = $Creditos
@onready var botones_menu = $BotonesMenu

func _on_quit_button_pressed():
	get_tree().quit()

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _ready():
	if OS.get_name() = "Web":
		quit_button.hide()

func _on_volver_pressed():
	creditos.hide()
	botones_menu.show()

func _on_creditos_button_pressed():
	botones_menu.hide()
	creditos.show()
