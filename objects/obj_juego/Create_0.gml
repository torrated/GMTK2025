/// @description 

enum ESTADOS_JUEGO {
	normal,
	pausado
};

estado = ESTADOS_JUEGO.normal


/// @description devuelve true si el juego está pausado
function juego_pausado()
{
	return (estado == ESTADOS_JUEGO.pausado);
}