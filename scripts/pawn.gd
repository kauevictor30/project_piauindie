extends Node3D


@onready var move_system: MoveSystem = $MoveSystemNode
@onready var behavior_system: BehaviorSystem = $BehaviorSystemNode

@export var n: int
var finished = true


var _position = Vector3.ZERO

func _ready() -> void:
	for i in range(n):
		behavior_system.push_stack_behavior("move")
		
	_position = position
	move_system.finished.connect(_on_finished)


func _process(delta: float) -> void:
	if behavior_system.has_behavior() and finished:
		finished = false
		behavior_system.pop_stack_behavior()
		_position.z -= 1
		move_system.move_to(_position)
		

func _on_finished():
	await get_tree().create_timer(2).timeout
	finished = true
