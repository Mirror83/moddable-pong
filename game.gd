extends Node2D


func _ready() -> void:
	get_tree().paused = true
	$GameOver.process_mode = Node.PROCESS_MODE_ALWAYS
	$Start.process_mode = Node.PROCESS_MODE_ALWAYS


func _on_start_button_pressed() -> void:
	$Start.hide()
	get_tree().paused = false


func _on_game_over(player_scored_against: Global.Player) -> void:
	$GameOver.show()
	var message = ""
	if player_scored_against == Global.Player.LEFT:
		message = "Player two wins!"
	else:
		message = "Player one wins!"

	$GameOver.set_message(message)
	get_tree().paused = true


func _on_restart_button_pressed() -> void:
	$GameLogic.reset_game()
	$GameOver.hide()
	get_tree().paused = false
