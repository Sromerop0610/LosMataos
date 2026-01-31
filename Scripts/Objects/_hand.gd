extends Node2D

@export var mano: Array[carta_base] = []

const MANO_MAXIMA: int = 3

func robar_carta():
	while mano.size() < MANO_MAXIMA:
		mano.append(carta_base)
	return mano

func flush_mano():
	mano = []
	return mano

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
