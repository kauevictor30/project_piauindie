class_name BehaviorSystem
extends Node

var behaviors: Array


func has_behavior() -> bool:
	return behaviors.size() > 0


func push_stack_behavior(behavior_name: String) -> void:
	behaviors.append(behavior_name)


func pop_stack_behavior() -> String:
	return behaviors.pop_back()
