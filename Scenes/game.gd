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
@onready var mano = $PreShow/mano
@onready var button_a_cantar = $PreShow/ButtonACantar
@onready var componentes_label = $"Recuentos Puntuacion/ComponentesLabel"
@onready var letra_label = $"Recuentos Puntuacion/LetraLabel"
@onready var afinacion_label = $"Recuentos Puntuacion/AfinacionLabel"
@onready var recuentos_puntuacion = $"Recuentos Puntuacion"

@onready var componentes_label_2 = $PuntuacionNecesaria/ComponentesLabel2
@onready var afinacion_label_2 = $PuntuacionNecesaria/AfinacionLabel2
@onready var letra_label_2 = $PuntuacionNecesaria/LetraLabel2
@onready var puntos_totales_label = $PuntuacionNecesaria/PuntosTotalesLabel

func _ready():
	tiempo_restante.max_value = tiempo_de_ronda.wait_time
	GlobalSignals.StartingShow.connect(start_show)
	animation_player.play("hintTextMove")
	GlobalSignals.GameWon.connect(pasar_de_ronda)
	GlobalSignals.GameLost.connect(game_over)
	mano.robar_carta()
	actualizar_requisitos()
	
	
func _process(_delta):
	tiempo_restante.value = tiempo_de_ronda.time_left
	segundos_label.text = str(int(tiempo_restante.value))

func _on_button_entendido_pressed():
	help_layer.hide()
	tiempo_de_ronda.paused = false

func _on_button_ayuda_pressed():
	help_layer.show()
	tiempo_de_ronda.paused = true

func start_show():
	componentes_label.text = "COMPONENTES: "
	afinacion_label.text = "AFINACIÓN: "
	letra_label.text = "LETRAS: "
	mano.hide()
	animation_player.play("show_start")
	await animation_player.animation_finished
	#telon_echado.hide()
	await get_tree().create_timer(1).timeout
	var puntosRonda = Inventario.sumarPuntosInventario()
	componentes_label.text += str(puntosRonda[0])
	afinacion_label.text += str(puntosRonda[1])
	letra_label.text += str(puntosRonda[2])
	recuentos_puntuacion.show()
	await get_tree().create_timer(5).timeout
	if Inventario.puntos_totales<game_config.get_fase_config(Puntos.fase).get("puntos_objetivo"):
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	recuentos_puntuacion.hide()
	print("fase: " + str(Puntos.fase))
	
	pasar_de_ronda()
	
func _on_tiempo_de_ronda_timeout():
	button_ayuda.hide()
	button_a_cantar.hide()
	tiempo_restante.hide()
	GlobalSignals.StartingShow.emit()

func _on_button_a_cantar_pressed():
	tiempo_de_ronda.stop()
	_on_tiempo_de_ronda_timeout()

func pasar_de_ronda():
	Inventario.vaciarInventario()
	GlobalSignals.roundPassed.emit()
	Puntos.fase +=1
	if Puntos.fase>=4:
		get_tree().change_scene_to_file("res://Scenes/pantalla_victoria.tscn")
	#print("pasando de ronda")
	Puntos.resetPuntuaciones()
	GlobalSignals.cartaRobada.emit()
	#telon_echado.show()
	actualizar_requisitos()
	animation_player.play("round_start")
	await animation_player.animation_finished
	mano.show()
	tiempo_restante.show()
	button_a_cantar.show()
	button_ayuda.show()
	tiempo_de_ronda.start()
	#print(Puntos.fase)

func game_over():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

func actualizar_requisitos():
	var dic = game_config.get_fase_config(Puntos.fase)
	var puntos_totales = dic.get("puntos_objetivo")
	print(dic)
	componentes_label_2.text = "COMPONENTES:"
	afinacion_label_2.text = "AFINACIÓN:"
	letra_label_2.text = "LETRA:"
	puntos_totales_label.text = "TOTALES:"
	componentes_label_2.text += str(game_config.COMPONENTES_MINIMO) + "-"+ str(game_config.COMPONENTES_MAXIMO)
	afinacion_label_2.text += str(int(dic.get("peso_afinacion")*puntos_totales))
	letra_label_2.text += str(int(dic.get("peso_letra")*puntos_totales))
	puntos_totales_label.text += str(puntos_totales)
	
