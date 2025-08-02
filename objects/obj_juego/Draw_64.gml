/// @description Distancia y vueltas

var _texto = 0;

if (obj_juego.juego_pausado())
{
	_texto = int64(distancia_guardada);
}
else
{
	_texto = int64(distancia_recorrida);
}

distancia_vuelta = _texto - (vueltas*metros_por_vuelta);
	
draw_text(15,50,$"Distance: {_texto}m");
draw_text(15,70,$"Laps: {vueltas}");