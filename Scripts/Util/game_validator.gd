class_name GameValidator
extends Node

class ResultadoValidacion:
	var exito: bool = false
	var mensaje: String = ""
	var puntos_letra: int = 0
	var puntos_afinacion: int = 0
	var puntos_totales: int = 0
	var componentes_totales: int = 0
	var cumple_minimo_letra: bool = false
	var cumple_minimo_afinacion: bool = false
	var cumple_componentes: bool = false

static func validar_fase_completada(inventario: Array, fase: int) -> ResultadoValidacion:
	var resultado := ResultadoValidacion.new()
	var config := game_config.get_fase_config(fase)
	
	if config.is_empty():
		resultado.mensaje = "Configuración de fase inválida"
		return resultado
	
	var total_letra: int = 0
	var total_afinacion: int = 0
	var total_componentes: int = 0
	
	for carta in inventario:
		total_letra += carta.get("puntos_letras", 0)
		total_afinacion += carta.get("afinacion", 0)
		total_componentes += carta.get("componentes", 0)
	
	resultado.puntos_letra = total_letra
	resultado.puntos_afinacion = total_afinacion
	resultado.componentes_totales = total_componentes
	resultado.puntos_totales = total_letra + total_afinacion
	
	var puntos_objetivo: int = config.get("puntos_objetivo", 0)
	var peso_letra: float = config.get("peso_letra", 0.45)
	var peso_afinacion: float = config.get("peso_afinacion", 0.45)
	
	var minimo_letra: int = int(puntos_objetivo * peso_letra)
	var minimo_afinacion: int = int(puntos_objetivo * peso_afinacion)
	
	resultado.cumple_componentes = (
		total_componentes >= game_config.COMPONENTES_MINIMO and
		total_componentes <= game_config.COMPONENTES_MAXIMO
	)
	
	resultado.cumple_minimo_letra = total_letra >= minimo_letra
	resultado.cumple_minimo_afinacion = total_afinacion >= minimo_afinacion

	if not resultado.cumple_componentes:
		if total_componentes < game_config.COMPONENTES_MINIMO:
			resultado.mensaje = "Faltan componentes. Tienes %d, mínimo %d" % [total_componentes, game_config.COMPONENTES_MINIMO]
		else:
			resultado.mensaje = "Demasiados componentes. Tienes %d, máximo %d" % [total_componentes, game_config.COMPONENTES_MAXIMO]
		return resultado
	
	if not resultado.cumple_minimo_letra:
		resultado.mensaje = "Puntos de letra insuficientes. Tienes %d, necesitas %d (45%%)" % [total_letra, minimo_letra]
		return resultado
	
	if not resultado.cumple_minimo_afinacion:
		resultado.mensaje = "Puntos de afinación insuficientes. Tienes %d, necesitas %d (45%%)" % [total_afinacion, minimo_afinacion]
		return resultado
	
	if resultado.puntos_totales < puntos_objetivo:
		resultado.mensaje = "Puntos totales insuficientes. Tienes %d, necesitas %d" % [resultado.puntos_totales, puntos_objetivo]
		return resultado
	
	resultado.exito = true
	resultado.mensaje = "¡Fase completada! Puntos: %d/%d" % [resultado.puntos_totales, puntos_objetivo]
	return resultado

static func calcular_rango(puntos: int, puntos_objetivo: int) -> String:
	var porcentaje: float = float(puntos) / float(puntos_objetivo) * 100.0
	
	if porcentaje >= 150:
		return "S"
	elif porcentaje >= 130:
		return "A"
	elif porcentaje >= 115:
		return "B"
	elif porcentaje >= 100:
		return "C"
	elif porcentaje >= 80:
		return "D"
	else:
		return "E"

static func resumen_inventario() -> Array:
	var total_letra: int = 0
	var total_afinacion: int = 0
	var total_componentes: int = 0
	var pointsArray = [total_componentes,total_afinacion,total_componentes]

	for carta in Inventario.inventario:
		total_letra += carta.get("puntos_letras")
		total_afinacion += carta.get("afinacion")
		total_componentes += carta.get("componentes")
	return pointsArray

	#
	#return "Cartas: %d | Letra: %d | Afinación: %d | Componentes: %d" % [
		#Inventario.inventario.size(),
		#total_letra,
		#total_afinacion,
		#total_componentes
	#]
