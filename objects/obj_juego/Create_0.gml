/// @description 

#macro RATIO 60/24

enum ESTADOS_JUEGO {
	normal,
	pausado,
	gameover
};

estado = ESTADOS_JUEGO.normal

distancia_recorrida = 0;
distancia_guardada = 0; // para la pausa
distancia_vuelta = 0;

vueltas = 0;
metros_por_vuelta = 100;

musica = audio_play_sound(snd_theme,1,true,0.2);

/// @description devuelve true si el juego está pausado
function juego_pausado()
{
	return !(estado == ESTADOS_JUEGO.normal);
}


/// @description Se acabo el juego
function game_over()
{
	estado = ESTADOS_JUEGO.gameover;
	distancia_guardada = distancia_recorrida;
	obj_carretera.Pausar();
	instance_create_layer(0,0,"Textos",obj_gameover);
	audio_stop_sound(obj_coche.motor);
	audio_stop_sound(musica);
	audio_play_sound(snd_crash,1,false);
}


/// @description Pausa el juego
function Pausar()
{
	estado = ESTADOS_JUEGO.pausado;
	distancia_guardada = distancia_recorrida;
	obj_carretera.Pausar();
	instance_create_layer(0,0,"Textos",obj_pause);
}


/// @description Reanuda el juego
function Reanudar()
{
	estado = ESTADOS_JUEGO.normal;
	distancia_recorrida = distancia_guardada;
	obj_carretera.Reanudar();
	with (obj_pause)
	{
		instance_destroy(self,true);
	}
}