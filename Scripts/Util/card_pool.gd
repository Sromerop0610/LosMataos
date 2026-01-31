class_name card_pool
extends Resource

const CARTAS_ESPECIALES: Array[Dictionary] = [
	{
		"id": "especial_julio",
		"title": "Julio Pardo",
		"puntos_letras": 0,
		"componentes": 2,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": true,
		"fase": 3,
		"efecto": {
			"tipo": "suma",
			"estadistica": "puntos_letras",
			"suma": 90
		}
	},
	{
		"id": "especial_bienvenido",
		"title": "Jesús Bienvenido",
		"puntos_letras": 0,
		"componentes": 2,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": true,
		"fase": 3,
		"efecto": {
			"tipo": "multiplicador",
			"estadistica": "puntos_letras",
			"multiplicador": 2.0
		}
	},
	{
		"id": "especial_juancarlos",
		"title": "Juan Carlos Aragón",
		"puntos_letras": 150,
		"componentes": 1,
		"afinacion": -100,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 3
	},
	{
		"id": "especial_martinez",
		"title": "Martinez Ares",
		"puntos_letras": -100,
		"componentes": 1,
		"afinacion": 150,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 3
	}
]

	
const CARTAS_BASICAS: Array[Dictionary] = [
	# BASICAS
	{
		"id": "basica1",
		"title": "Letra pequeña",
		"puntos_letras": 6,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},	{
		"id": "basica2",
		"title": "Letra estandar",
		"puntos_letras": 8,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},	{
		"id": "basica3",
		"title": "Letra perfecta",
		"puntos_letras": 10,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},	{
		"id": "basica4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 6,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},	{
		"id": "basica5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 8,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},	{
		"id": "basica6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 10,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},
	# MEDIANAS
	{
		"id": "media1",
		"title": "Letra pequeña",
		"puntos_letras": 6,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 1
	},	{
		"id": "media2",
		"title": "Letra estandar",
		"puntos_letras": 8,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 1
	},	{
		"id": "media3",
		"title": "Letra perfecta",
		"puntos_letras": 10,
		"componentes": 1,
		"afinacion": 0,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 1
	},	{
		"id": "media4",
		"title": "Afinación pequeña",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 6,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 1
	},	{
		"id": "media5",
		"title": "Afinación mediana",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 8,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 1
	},	{
		"id": "media6",
		"title": "Afinación perfecta",
		"puntos_letras": 0,
		"componentes": 1,
		"afinacion": 10,
		"ruta_sprite": "res://icon.svg",
		"especial": false,
		"fase": 0
	},
]
