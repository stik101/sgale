extends CanvasLayer


signal show_controls

func _ready() -> void:
	hide()
	show_controls.connect(show_mobile_controls)


# Called every frame. 'delta' is the elapsed time since the previous frame.


func show_mobile_controls() -> void:
	if (OS.get_name() == "Android" or OS.get_name() == "iOS"):
		show()
	else:
		hide()
