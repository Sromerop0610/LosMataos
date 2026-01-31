extends Node2D

const MANO_MAXIMA: int = 3

const carta_scene = preload("res://Scenes/carta.tscn")

var mano: Array = []
var inventario_jugador: Array = []
var fase_actual: int = 0

func crear_carta_aleatoria() -> carta_base:

	var data: Dictionary = card_pool.generar_carta_aleatoria(fase_actual)
	var carta: carta_base = carta_scene.instantiate()
	#carta.crear_carta(data)
	add_child(carta)
	return carta

func robar_carta():
	flush_mano(mano)
	mano.clear()
	
	while mano.size() < MANO_MAXIMA:
		var carta := crear_carta_aleatoria()
		mano.append(carta)
	return mano

func flush_mano(mano_ref: Array):
	for carta in mano_ref:
		carta.queue_free()

func inventario_ronda(carta_seleccionada: carta_base):
	var carta_data := {
		"id": carta_seleccionada.id,
		"title": carta_seleccionada.title,
		"puntos_letras": carta_seleccionada.puntos_letras,
		"componentes": carta_seleccionada.componentes,
		"afinacion": carta_seleccionada.afinacion
	}
	
	inventario_jugador.append(carta_data)
	
	print("Carta añadida: ", carta_data.title)
	print("Total en inventario: ", inventario_jugador.size())

	flush_mano(mano)
	mano.clear()
	robar_carta()

func _ready() -> void:
	robar_carta()

func _process(delta: float) -> void:
	pass
