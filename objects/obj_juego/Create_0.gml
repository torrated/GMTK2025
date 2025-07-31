/// @description 

enum ESTADOS_JUEGO {
	normal,
	pausado,
	gameover
};

estado = ESTADOS_JUEGO.normal


/// @description devuelve true si el juego está pausado
function juego_pausado()
{
	return !(estado == ESTADOS_JUEGO.normal);
}


/// @description Se acabo el juego
function game_over()
{
	estado = ESTADOS_JUEGO.gameover;
	obj_carretera.Pausar();
	instance_create_layer(0,0,"Textos",obj_gameover);
}


/// @description Pausa el juego
function Pausar()
{
	estado = ESTADOS_JUEGO.pausado;
	obj_carretera.Pausar();
	instance_create_layer(0,0,"Textos",obj_pause);
}


/// @description Reanuda el juego
function Reanudar()
{
	estado = ESTADOS_JUEGO.normal;
	obj_carretera.Reanudar();
	with (obj_pause)
	{
		instance_destroy(self,true);
	}
}