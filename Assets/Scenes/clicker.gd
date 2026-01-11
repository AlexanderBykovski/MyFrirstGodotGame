extends Node2D

var money = 0
var bon = 1 
var up = 0

func _process(delta: float) -> void:
	$'Coins'.text = str(money)
	$St.text = "Cost: " + str(bon * 10)
	$AutocklickerCost.text = "Cost: " + str((up + 1) * 20)
	$AutoCounter.text = "Ckicks per 1 cklick: " + str(up)
	$BasicCounter.text = "Ckicks per 1 cklick: " + str(bon)
	#$GlCounter.text = "Total clicks: " + str(money)


func _on_click_pressed() -> void:
	money += bon 


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
