extends Node

var money: int = 0
var bon: int = 1

@onready var coins_label = $Coins

func _process(_delta):
	coins_label.text = str(money)

func _on_button_pressed():
	money += bon
