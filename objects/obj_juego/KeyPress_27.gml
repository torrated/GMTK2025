/// @description PAUSA

if (estado == ESTADOS_JUEGO.normal)
{
	estado = ESTADOS_JUEGO.pausado;
	obj_carretera.Pausar();
	instance_create_layer(0,0,"Textos",obj_pause);
}
else
{
	estado = ESTADOS_JUEGO.normal;
	obj_carretera.Reanudar();
	with (obj_pause)
	{
		instance_destroy(self,true);
	}
}