/// @description define la velocidad

velocidad_vertical = 0.005;
velocidad_guardada = 0;

/// @description Detiene la animacion y guarda la velocidad
function Pausar()
{
	velocidad_guardada = image_speed;
	image_speed = 0;
}


/// @description Reanuda la animacion
function Reanudar()
{
	image_speed = velocidad_guardada;
}