extends Node2D

const MANO_MAXIMA: int = 3

const carta_scene = preload("res://Scenes/carta.tscn")
@export var sepCarta = 200
var mano: Array = []
var inventario_jugador: Array = []
var fase_actual: int = 0

func crear_carta_aleatoria() -> carta_base:

	var data: Dictionary = card_pool.generar_carta_aleatoria(fase_actual)
	var carta: carta_base = carta_scene.instantiate()
	carta.crear_carta(data)
	add_child(carta)
	return carta

func robar_carta():
	print("robando cartas")
	flush_mano()
	mano.clear()
	for i in range(MANO_MAXIMA):
		var carta := crear_carta_aleatoria()
		carta.global_position.x = 280 + (200*i);
		carta.global_position.y= 450;
	
		mano.append(carta)
	return mano

func flush_mano():
	for carta in mano:
		carta.queue_free()
		
func disable_mano():
	for carta in mano:
		carta.disable_button()

#func inventario_ronda(carta_seleccionada: carta_base):
	#var carta_data := {
		#"id": carta_seleccionada.id,
		#"title": carta_seleccionada.title,
		#"puntos_letras": carta_seleccionada.puntos_letras,
		#"componentes": carta_seleccionada.componentes,
		#"afinacion": carta_seleccionada.afinacion
	#}
	#
	#inventario_jugador.append(carta_data)
	#
	#print("Carta añadida: ", carta_data.title)
	#print("Total en inventario: ", inventario_jugador.size())
	#flush_mano()
	#mano.clear()
	#robar_carta()

func _ready() -> void:
	GlobalSignals.cartaRobada.connect(robar_carta)
	GlobalSignals.roundPassed.connect(pasar_ronda)
	robar_carta()

func pasar_ronda():
	fase_actual+=1

func _process(delta: float) -> void:
	pass
