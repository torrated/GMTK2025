/// @description Distancia y vueltas

var _texto = "";

if (obj_juego.juego_pausado())
{
	_texto = int64(distancia_guardada);
}
else
{
	_texto = int64(distancia_recorrida);
}

draw_text(10,50,$"Distance: {_texto}m");
draw_text(10,70,$"Laps: {vueltas}");