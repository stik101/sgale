extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await NG.medal_unlock(NewgroundsIds.MedalId.Done)
	var time_sr:SRTimer = get_node("/root/SpeedrunTimer")
	if time_sr.time <= 34.25:
		await NG.medal_unlock(NewgroundsIds.MedalId.BetterThanMe)
	await NG.scoreboard_submit_time(NewgroundsIds.ScoreboardId.SpeedrunLeague, time_sr.time)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$VBoxContainer/DeathCounter.text = '										[font_size=30][color=red]Total death: ' + str(DeathCounterAutoload.return_death_counter())
	$VBoxContainer/SpeedrunTime.text = '										[font_size=30][color=green]FINAL TIME: ' + str(SpeedrunTimer.time_to_str())

func _on_button_pressed() -> void:
	DeathCounterAutoload.death_counter = 0
	SceneManager.swap_scenes("res://scenes/main_screen.tscn", get_tree().root, self, "wipe_to_right")
