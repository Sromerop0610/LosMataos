class_name carta_base
extends Sprite2D
@onready var button = $Button

@export var id: String
@export var title: String
@export var puntos_letras: int
@export var componentes: int
@export var afinacion: int
@export var ruta_sprite: String

func _ready():
	print(self)

func crear_carta(data: Dictionary) -> void:
	self.id = data.get("id", "")
	self.title = data.get("title", "")
	self.puntos_letras = data.get("puntos_letras", 0)
	self.componentes = data.get("componentes", 0)
	self.afinacion = data.get("afinacion", 0)
	self.ruta_sprite = data.get("ruta_sprite", "res://icon.svg")
	self.texture = load(self.ruta_sprite)

func play(target: Node) -> void:
	pass

func disable_button():
	button.disabled = true

func _on_button_pressed():
	print("Carta robada")
	Inventario.llenarInventario(self)
	GlobalSignals.cartaRobada.emit()
