extends Node2D

const MANO_MAXIMA: int = 3
const CARTAS_POOL := card_pool.CARTAS

# Precargar la escena de la carta
const carta_scene = preload("res://Scenes/carta.tscn")

var mano: Array = []

func crear_carta_aleatoria() -> carta_base:
	var data: Dictionary = CARTAS_POOL.pick_random()
	var carta: carta_base = carta_scene.instantiate()
	carta.crear_carta(data)
	add_child(carta)
	return carta

func robar_carta():
	while mano.size() < MANO_MAXIMA:
		var carta := crear_carta_aleatoria()  # también falta esta lógica
		mano.append(carta)
	return mano

func flush_mano(mano):
	for carta in mano:
		carta.queue_free()
	return mano

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	robar_carta()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
