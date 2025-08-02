/// @description Mueve la carretera hacia abajo

if !(obj_juego.juego_pausado())
{
	image_speed += velocidad_vertical;
	audio_sound_pitch(obj_coche.motor,image_speed/4);
}