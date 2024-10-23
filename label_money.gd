extends Label

@onready var money_label = $Hud/Control/TextureRect/LabelMoney

var money: float = 0
var bonus_multiplier: float = 1.0

func update_money(amount: int):
	if amount > 0:
		money += amount * bonus_multiplier
	else:
		money += amount
	update_money_label()
	
	
func update_money_label():
	money_label.text = "Money: " + "%.2f $" % money
