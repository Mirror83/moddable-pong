extends Node


func _ready() -> void:
	get_tree().paused = true
	process_mode = Node.PROCESS_MODE_ALWAYS
	$GameOver.process_mode = Node.PROCESS_MODE_ALWAYS
	$Start.process_mode = Node.PROCESS_MODE_ALWAYS


func _on_start_button_pressed() -> void:
	$Start.hide()
	get_tree().paused = false
	print("Pressed")
