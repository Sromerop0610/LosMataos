extends Node
#
var inventario: Array = []
var objetoMascara: mascara

func _ready():
	GlobalSignals.StartingShow.connect(printearInventario)

func llenarInventario(cartaNueva:carta_base):
	inventario.append(cartaNueva)

func sumarPuntosInventario():
	var sumaTotal = 0
	for i in inventario:
		sumaTotal += objetoMascara.Puntos.sumarPuntos(inventario)
		

func printearInventario():
	for carta in inventario:
		print(carta)
