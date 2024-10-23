extends Node

static var car_sprites = {
	"Blue_CIVIC_CLEAN": "res://assets/TopDown Vehicles v1.17/CIVIC TOPDOWN/Blue/Blue_CIVIC_CLEAN_8D_000-sheet.png",
	"Red_CIVIC_CLEAN": "res://assets/TopDown Vehicles v1.17/CIVIC TOPDOWN/Red/Red_CIVIC_CLEAN_8D_000-sheet.png"
}

static var car_stats = {
	"Blue_CIVIC_CLEAN": {"speed": 200, "acceleration": 10, "price": 0 },
	"Red_CIVIC_CLEAN": {"speed": 220, "acceleration": 12, "price": 100 }
}

static var player_car = "Red_CIVIC_CLEAN"

static func get_car_sprite(car_type: String) -> String:
	print(car_type)
	if car_sprites.has(car_type):
		print(car_sprites[car_type])
		return car_sprites[car_type]
	else:
		return ""  
	
static func get_car_stats(car_type: String) -> Dictionary:
	if car_stats.has(car_type):
		return car_stats[car_type]
	else:
		return {"speed": 0, "acceleration": 0} 
