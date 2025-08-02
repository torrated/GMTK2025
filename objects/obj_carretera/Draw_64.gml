/// @description muestra la velocidad en pantalla

var _texto = "";

if (obj_juego.juego_pausado())
	_texto = int64(velocidad_guardada);
else
	_texto = int64(image_speed);

draw_text(15,30,$"Speed:{_texto}");