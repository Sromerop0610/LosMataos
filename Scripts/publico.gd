extends Node

@export var puntuacionMala: int
@export var puntuacionBuena: int
var puntuacion: int
var isShowPlaying = false
const POSIBILIDAD_DESAPARECER: float = 0.2
const POSIBILIDAD_SALTAR: float = 0.8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalSignals.StartingShow.connect(makeShowPlaying)
	GlobalSignals.roundPassed.connect(stopShow)
	puntuacion = 5
	# genera publico
	for i in range(7):
		var instance = load("res://Scenes/asistente.tscn").instantiate()
		instance.global_position = Vector2(i*130, 0)
		add_child(instance)

func _desaparecer(probabilidad = POSIBILIDAD_DESAPARECER) -> void:
	var tween = get_tree().create_tween()
	var children = get_children() 
	for publico in children:
		if publico is Sprite2D and randf() < probabilidad:
			tween.tween_property(publico, "modulate", Color.TRANSPARENT, 0.5)
	
func _saltar(probabilidad = POSIBILIDAD_SALTAR) -> void:
	var tween = get_tree().create_tween()
	var children = get_children()
	for publico in children:
		if publico is Sprite2D and randf() < probabilidad:
			# activa salto
			publico.activar_salto()
			#tween.tween_property(publico, "scale", Vector2(1,1.2), 0.2).set_trans(Tween.TRANS_BOUNCE)
			#tween.tween_property(publico, "scale", Vector2(1,1), 0.1).set_trans(Tween.TRANS_BOUNCE)
		

func makeShowPlaying():
	isShowPlaying = true

func stopShow():
	isShowPlaying = false

func _on_timer_timeout() -> void:
	print("trying tween")
	if isShowPlaying:
		print("Show Playing")
		if puntuacion <= puntuacionMala:
			_desaparecer()
		elif puntuacion >= puntuacionBuena:
			_saltar()
