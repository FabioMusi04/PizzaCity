extends Node

var money: float = 0
var bonus_multiplier: float = 1.0
var pizzas_delivered: int = 0
var score: int = 0

func add_money(amount: int):
	money += amount * bonus_multiplier
	print("Money: ", money)
func deduct_money(amount: int):
	money -= amount
	if money < 0:
		money = 0
	print("Money: ", money)
	
func add_pizza_delivery():
	pizzas_delivered += 1
	print("Pizzas Delivered: ", pizzas_delivered)
	
func reset_game():
	money = 0
	pizzas_delivered = 0
	bonus_multiplier = 1.0
	score = 0
	print("Game Reset")
