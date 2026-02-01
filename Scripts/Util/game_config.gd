class_name game_config
extends Node

const COMPONENTES_MINIMO: int = 10
const COMPONENTES_MAXIMO: int = 16
const MANO_MAXIMA: int = 3
const TIEMPO_TURNO: float = 60.0

const FASES = [
	{
		"fase": 0,
		"puntos_objetivo": 200,
		"peso_afinacion": 0.45,
		"peso_letra": 0.45,
		"peso_libre": 0.10
	},	
	{
		"fase": 1,
		"puntos_objetivo": 300,
		"peso_afinacion": 0.45,
		"peso_letra": 0.45,
		"peso_libre": 0.10
	},
	{
		"fase": 2,
		"puntos_objetivo": 650,
		"peso_afinacion": 0.45,
		"peso_letra": 0.45,
		"peso_libre": 0.10
	},
	{
		"fase": 3,
		"puntos_objetivo": 1000,
		"peso_afinacion": 0.45,
		"peso_letra": 0.45,
		"peso_libre": 0.10
	},
]

static func get_fase_config(fase: int) -> Dictionary:
	if fase >= 0 and fase < FASES.size():
		return FASES[fase]
	push_error("Fase no válida")
	return {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
