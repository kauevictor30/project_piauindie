class_name MoveSystem
extends Node

@export var object: Node3D

signal finished

var _tweening: bool = false
#var _position: Vector3 = Vector3.ZERO

func _ready() -> void:
	object = get_parent()
	#_position = object.position


func move_to(to: Vector3, duration: float = 1.0) -> void:
	if _tweening:
		return

	_tweening = true
	var tween = get_tree().create_tween()
	tween.tween_property(object, "position", to, duration)
	_tweening = false
	finished.emit()


#func _process(delta: float) -> void:
	#if Input.is_action_just_pressed("ui_up") and not _tweening:
		#_position.z -= 1;
		#move_to(_position)
