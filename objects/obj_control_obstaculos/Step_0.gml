/// @description 

//distancia = obj_juego.distancia_recorrida;
distancia = obj_juego.distancia_vuelta;

if (array_contains(distancias,distancia) && distancia <> distancia_anterior)
{
	var _indice = array_get_index(distancias,distancia);
	instance_create_layer(posiciones[_indice],0,"Arbustos",objetos[_indice]);
}

distancia_anterior = distancia;