/// @description mueve hacia abajo

if !(obj_juego.juego_pausado())
{
	y += 8*24*spr_carretera.image_speed/60; //diferencia de pixels entre frames*frames por segundo/frame rate
}