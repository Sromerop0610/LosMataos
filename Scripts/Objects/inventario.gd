extends Node
#
var inventario: Array = []
var objetoMascara: mascara


func llenarInventario(mascaraNueva:mascara):
	inventario.append(mascaraNueva)

func sumarPuntosInventario():
	var sumaTotal = 0
	for i in inventario:
		sumaTotal += objetoMascara.Puntos.sumarPuntos(inventario)
		
