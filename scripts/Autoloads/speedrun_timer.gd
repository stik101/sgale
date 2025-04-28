extends Control
class_name SRTimer

@export var label:Label
@export var panel:PanelContainer
@export var time:float = 0.0
var counting:bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time = 0
	panel.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if counting:
		time += delta
	else:
		return
	label.text = time_to_str()

func start_timer() -> void:
	panel.show()
	time = 0
	counting = true

func stop_timer() -> void:
	panel.hide()
	counting = false

func time_to_str() -> String:
	var msec = fmod(time, 1) * 100
	var sec = fmod(time, 60)
	var min = time / 60
	var format_str = '%02d : %02d : %02d'
	var actual_sting = format_str % [min, sec, msec]
	return actual_sting
