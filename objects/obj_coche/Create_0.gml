/// @description 

velocidad = 2//10;
angulo = 10;

motor = audio_play_sound(snd_motor,1,true);

image_speed = 0;

speed_guardada = 0;

/// @description Pausa al ruido del motor y la animacion
function Pausar()
{
	if (audio_is_playing(motor))
		audio_pause_sound(motor);
	speed_guardada = image_speed;
	image_speed = 0;
}

/// @description Reanuda el ruido del motor y la animacion
function Reanudar()
{
	if (audio_is_paused(motor))
		audio_resume_sound(motor);
	image_speed = speed_guardada;
}