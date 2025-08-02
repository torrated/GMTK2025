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
	
draw_text(10,30,$"Distance lap: {distancia_vuelta}m");
draw_text(10,50,$"Distance total: {_texto}m");
draw_text(10,70,$"Laps: {vueltas}");