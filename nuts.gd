extends Node2D

export var value = 1


func _ready():

	if get_owner() != null:
		get_owner().nuts_total += value
	
	get_node("Area2D").connect("body_enter",self,"_collect_peanut")


func _collect_peanut( body ):
	if get_owner() != null:
		get_owner().nuts_collected += value

	print(get_owner().nuts_collected)	
	queue_free()
	

