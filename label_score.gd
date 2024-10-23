extends Label

@onready var score_label = $Hud/Control/TextureRect/LabelScore


var score: int = 0

func update_score(value):
	score += value
	update_score_label()

func update_score_label():
	score_label.text = "Score: " + str(score)
