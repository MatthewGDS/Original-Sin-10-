extends CanvasModulate

const NIGHT_COLOR = Color("#deb8b8")
const DAY_COLOR = Color("#ffffff")
const TIME_SCALE = 0.1

var time = 0

func _process(delta:float) -> void:
	self.time += delta * TIME_SCALE
	self.color = NIGHT_COLOR.linear_interpolate(DAY_COLOR, abs(sin(time)))
