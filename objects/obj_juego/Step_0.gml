/// @description Crea metas y cuenta vueltas

if (vueltas <> floor(distancia_recorrida/metros_por_vuelta))
{
	instance_create_layer(0,0,"Meta",obj_meta);
}
vueltas = floor(distancia_recorrida/metros_por_vuelta);