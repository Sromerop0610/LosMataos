class_name card_pool
extends Resource

const CARTAS: Array[Dictionary] = [
	
	# BASICAS - Fase de preliminares
	
	# ESTAS SOLO LETRA +
	{
		"id": "basica1",
		"title": "Letra pequeña",
		"puntos_letras": 7,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},	{
		"id": "basica2",
		"title": "Letra estandar",
		"puntos_letras": 8,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},	{
		"id": "basica3",
		"title": "Letra perfecta",
		"puntos_letras": 12,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},	
	
	# ESTAS SOLO AFINACION +
	{
		"id": "basica4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 7,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},	{
		"id": "basica5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 8,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},	{
		"id": "basica6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 12,
		"ruta_sprite": "res://icon.svg",
		"fase": 0
	},
	
	# MEDIANAS - Fase de cuartos de final
	
	# ESTAS SOLO LETRA +
	{
		"id": "media1",
		"title": "Letra pequeña",
		"puntos_letras": 15,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},	{
		"id": "media2",
		"title": "Letra estandar",
		"puntos_letras": 24,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},	{
		"id": "media3",
		"title": "Letra perfecta",
		"puntos_letras": 30,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},	
	
	# ESTAS SOLO SON AFINACION +
	{
		"id": "media4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 15,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},	{
		"id": "media5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 24,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},	{
		"id": "media6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 30,
		"ruta_sprite": "res://icon.svg",
		"fase": 1
	},
	
	# GRANDES - Seminifales
	
	# ESTA SOLO SUBEN LETRA +
	{
		"id": "grande1",
		"title": "Letra pequeña",
		"puntos_letras": 35,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},	{
		"id": "grande2",
		"title": "Letra estandar",
		"puntos_letras": 42,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},	{
		"id": "grande3",
		"title": "Letra perfecta",
		"puntos_letras": 47,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},	{
		"id": "grande4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 35,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},	{
		"id": "grande5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 42,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},	{
		"id": "grande6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 47,
		"ruta_sprite": "res://icon.svg",
		"fase": 2
	},
	
	# GIGANTES - Final del falla
	
	# ESTAS SUMAN SOLO LETRA +
	{
		"id": "gigante1",
		"title": "Letra pequeña",
		"puntos_letras": 65,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	{
		"id": "gigante2",
		"title": "Letra estandar",
		"puntos_letras": 70,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	{
		"id": "gigante3",
		"title": "Letra perfecta",
		"puntos_letras": 85,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	
	# ESTAS SOLO SUMAN AFINACION +
	{
		"id": "gigante4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 65,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	{
		"id": "gigante5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 75,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	{
		"id": "gigante6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 85,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	}, 
	
	# DE PENALIZACIÓN - Variables
	# DAN AFINACION PERO QUITAN LETRAS
	{
		"id": "especial_variable1",
		"title": "Afinación aguda",
		"puntos_letras": -10,
		"componentes": 1,
		"afinacion": 50,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable2",
		"title": "Afinación grave",
		"puntos_letras": -15,
		"componentes": 1,
		"afinacion": 55,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable3",
		"title": "Afinación tenor",
		"puntos_letras": -20,
		"componentes": 1,
		"afinacion": 60,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	
	# DAN AFINACIÓN PERO QUITA LETRA
	
		{
		"id": "especial_variable4",
		"title": "Letra controversial",
		"puntos_letras": 50,
		"componentes": 1,
		"afinacion": -10,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable5",
		"title": "Letra grave",
		"puntos_letras": 55,
		"componentes": 1,
		"afinacion": -15,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable6",
		"title": "Letra malvada",
		"puntos_letras": 60,
		"componentes": 1,
		"afinacion": -10,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	
	# QUITA COMPONENTE - SOLO SUMA O LETRA O AFINACIÓN
	
	{
		"id": "especial_variable7",
		"title": "Letra controversial",
		"puntos_letras": 30,
		"componentes": -1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable8",
		"title": "Letra grave",
		"puntos_letras": 0,
		"componentes": -1,
		"afinacion": 30,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_variable9",
		"title": "Letra malvada",
		"puntos_letras": 15,
		"componentes": -1,
		"afinacion": 15,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},	
	{
		"id": "especial_variable10",
		"title": "Letra malvada",
		"puntos_letras": -10,
		"componentes": -1,
		"afinacion": -10,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},

	# ESPECIALES AUTORES - Aparecen solo en la final
	{
		"id": "especial_variable4",
		"title": "Julio Pardo",
		"puntos_letras": 90,
		"componentes": 2,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_bienvenido",
		"title": "Jesús Bienvenido",
		"puntos_letras": 120,
		"componentes": 2,
		"afinacion": 90,
		"ruta_sprite": "res://icon.svg",
		"fase": 3,
	},
	{
		"id": "especial_juancarlos",
		"title": "Juan Carlos Aragón",
		"puntos_letras": 150,
		"componentes": 1,
		"afinacion": -100,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
	{
		"id": "especial_martinez",
		"title": "Martinez Ares",
		"puntos_letras": -100,
		"componentes": 1,
		"afinacion": 150,
		"ruta_sprite": "res://icon.svg",
		"fase": 3
	},
		{
		"id": "especial_martinez",
		"title": "Martinez Ares",
		"puntos_letras": -100,
		"componentes": 1,
		"afinacion": 150,
		"ruta_sprite": "res://icon.svg",
		"fase": 4
	}
	
]

# Filtra cartas por fase y devuelve una aleatoria
static func generar_carta_aleatoria(fase: int) -> Dictionary:
	var cartas_fase: Array[Dictionary] = []
	
	for carta in CARTAS:
		if carta.get("fase", -1) == fase:
			cartas_fase.append(carta)
	var indice_aleatorio := randi() % cartas_fase.size()
	return cartas_fase[indice_aleatorio]

# Devuelve todas las cartas de una fase específica
static func obtener_cartas_por_fase(fase: int) -> Array[Dictionary]:
	var cartas_fase: Array[Dictionary] = []
	
	for carta in CARTAS:
		if carta.get("fase", -1) == fase:
			cartas_fase.append(carta)
	
	return cartas_fase

# Devuelve el total de cartas disponibles en una fase
static func contar_cartas_fase(fase: int) -> int:
	return obtener_cartas_por_fase(fase).size()
