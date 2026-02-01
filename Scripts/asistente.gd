extends Sprite2D

@export var escala = 1.7
@export var salto = .3
@export var caida = .15

func activar_salto():
	# para que no salten todos a la vez
	$Timer.wait_time += randf_range(-0.18, 0.18)
	$Timer.start()

func _on_timer_timeout() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(self, "scale", Vector2(7.5,escala), salto).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property(self, "scale", Vector2(escala,7.5), caida).set_trans(Tween.TRANS_BOUNCE)
