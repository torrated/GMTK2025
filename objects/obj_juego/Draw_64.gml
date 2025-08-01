/// @description Distancia

var _texto = "";

if (obj_juego.juego_pausado())
	_texto = int64(distancia_guardada);
else
	_texto = int64(obj_carretera.image_speed*60/24);

draw_text(10,50,$"Distance: {_texto} m.");