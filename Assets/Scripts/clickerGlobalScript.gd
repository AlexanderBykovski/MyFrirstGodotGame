extends Node2D

var money = 0
var bon = 1 
var up = 0
var total_clicks = 0

func _process(delta: float) -> void:
	$'Coins'.text = str(money)
	$St.text = "Cost: " + str(bon * 10)
	$AutocklickerCost.text = "Cost: " + str((up + 1) * 20)
	$AutoCounter.text = "Clicks per 1 cklick: " + str(up)
	$BasicCounter.text = "Clicks per 1 cklick: " + str(bon)
	$GlobalCounter.text = "Total clicks: " + str(total_clicks)



func _on_click_pressed() -> void:
	money += bon
	total_clicks += 1



func _on_up_pressed() -> void:
	if(money >= bon * 10):
		money -= bon * 10
		bon += 1


func _on_autockick_pressed() -> void:
	if(money >= (up + 1) * 20):
		money -= (up + 1) * 20
		up += 1

	


func _on_timer_timeout() -> void:
	money += up
	total_clicks += up



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file('res://Assets/Scenes/menu.tscn');
