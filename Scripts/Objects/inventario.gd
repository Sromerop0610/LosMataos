extends Node
#
var inventario: Array = []
var objetoMascara: mascara

func _ready():
	GlobalSignals.StartingShow.connect(sumarPuntosInventario)

func llenarInventario(cartaNueva:carta_base):
	inventario.append(cartaNueva.duplicate())

func sumarPuntosInventario():
	print("A printear inventario")
	var sumaTotal = 0
	for mascara in inventario:
		print("PUNTOS TOTALES: " + str(mascara.componentes))

func vaciarInventario():
	inventario.clear()
