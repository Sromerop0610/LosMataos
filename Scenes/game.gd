extends Node2D
@onready var help_layer = $HelpLayer
@onready var button_entendido = $HelpLayer/ButtonEntendido
@onready var tiempo_de_ronda = $TiempoDeRonda
@onready var telon_abierto = $TelonAbierto
@onready var button_ayuda = $PreShow/ButtonAyuda
@onready var tiempo_restante = $PreShow/TiempoRestante
@onready var segundos_label = $PreShow/TiempoRestante/SegundosLabel
@onready var telon_echado = $TelonEchado
@onready var pre_show = $PreShow
@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	tiempo_restante.max_value = tiempo_de_ronda.wait_time
	GlobalSignals.StartingShow.connect(start_show)
	animation_player.play("hintTextMove")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tiempo_restante.value = tiempo_de_ronda.time_left
	segundos_label.text = str(int(tiempo_restante.value))

func _on_button_entendido_pressed():
	help_layer.hide()
	tiempo_de_ronda.paused = false

func _on_button_ayuda_pressed():
	help_layer.show()
	tiempo_de_ronda.paused = true

func start_show():
	animation_player.play("show_start")
	await animation_player.animation_finished
	telon_echado.hide()

func _on_tiempo_de_ronda_timeout():
	GlobalSignals.StartingShow.emit()


func _on_button_a_cantar_pressed():
	tiempo_de_ronda.stop()
	_on_tiempo_de_ronda_timeout()
