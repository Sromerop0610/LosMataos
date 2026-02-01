extends Node

var inventario: Array = []
var objetoMascara: mascara
var puntos_componentes = 0
var puntos_afinacion = 0
var puntos_letra = 0
var puntos_totales = 0

func _ready():
	pass
	#GlobalSignals.StartingShow.connect(sumarPuntosInventario)

func llenarInventario(cartaNueva:carta_base):
	inventario.append(cartaNueva.duplicate())

func sumarPuntosInventario() -> Array:
	var sumaTotal = 0
	for mascara in inventario:
		puntos_componentes += mascara.componentes
		puntos_afinacion += mascara.afinacion
		puntos_letra += mascara.puntos_letras
	var puntosTotales = [puntos_componentes,puntos_afinacion,puntos_letra]
	puntos_totales = puntos_afinacion + puntos_letra
	print(puntosTotales)
	return puntosTotales

func vaciarInventario():
	inventario.clear()
