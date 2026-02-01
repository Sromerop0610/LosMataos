extends Node

var fase: int = 0
var letras: int
var afinacion: int
var componentes: int
var puntosTotales: int
var rangoS: int = 200
var rangoA: int = 190
var rangoB: int = 180
var rangoC: int = 150
var rangoD: int = 120
var rangoE: int

func sumarPuntos():
	var puntosObtenidos = letras + afinacion + componentes
	return puntosObtenidos
	
func pasarNivel():
	if sumarPuntos() >= puntosTotales:
		print("Ehorabuena pasas de ronda")
		
func asignarRango():
		if puntosTotales >= rangoS:
			return rangoS
		elif puntosTotales >= rangoA:
			return rangoA
		elif puntosTotales >= rangoB:
			return rangoB
		elif puntosTotales >= rangoC:
			return rangoC
		elif puntosTotales >= rangoD:
			return rangoD
		else:
			return rangoE

func resetPuntuaciones():
	componentes = 0
	letras = 0
	afinacion = 0
	
