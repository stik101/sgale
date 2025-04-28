extends AudioStreamPlayer

@export var theme_song:AudioStreamOggVorbis

func play_theme():
	stream = theme_song
	play()

func stop_all():
	stop()
