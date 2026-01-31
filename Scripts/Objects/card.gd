class_name carta_base
extends Node2D

@export var id: String
@export var title: String
@export var puntos_letras: int
@export var componentes: int
@export var afinacion: int

func crear_carta(data: Dictionary) -> void:
	self.id = data.get("id", "")
	self.title = data.get("title", "")
	self.puntos_letras = data.get("puntos_letras", 0)
	self.componentes = data.get("componentes", 0)
	self.afinacion = data.get("afinacion", 0)

func play(target: Node) -> void:
	pass
