extends Label

@onready var capacity_label = $Hud/Control/TextureRect/LabelCapacity

var capacity: float = 0
var max_capacity: int = 0

func update_capacity(amount: int):
	capacity += amount
	update_capacity_label()
	
func update_capacity_label():
	capacity_label.text = "capacity: " + str(capacity) + "/" + str(max_capacity)
