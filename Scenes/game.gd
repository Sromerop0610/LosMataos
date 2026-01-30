extends Node2D
@onready var help_layer = $HelpLayer
@onready var button_ayuda = $ButtonAyuda
@onready var button_entendido = $HelpLayer/ButtonEntendido
@onready var tiempo_restante = $TiempoRestante
@onready var tiempo_de_ronda = $TiempoDeRonda
@onready var segundos_label = $TiempoRestante/SegundosLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	tiempo_restante.max_value = tiempo_de_ronda.wait_time

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tiempo_restante.value = tiempo_de_ronda.time_left
	segundos_label.text = str(tiempo_restante.value)

func _on_button_entendido_pressed():
	help_layer.hide()
	tiempo_de_ronda.paused = false

func _on_button_ayuda_pressed():
	help_layer.show()
	tiempo_de_ronda.paused = true
