/// @description Crea metas y cuenta vueltas

if (vueltas <> floor(distancia_recorrida/metros_por_vuelta))
{
	instance_create_layer(0,0,"Meta",obj_meta);
	instance_create_layer(room_width/2,room_height/2,"Textos",obj_lap);
}
vueltas = floor(distancia_recorrida/metros_por_vuelta);