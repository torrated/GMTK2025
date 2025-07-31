/// @description

if !(obj_juego.juego_pausado())
{
	var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
	var _moverse = _hor * velocidad;
	var _grosor_frame = 16;

	// para que no se salga por la izquierda
	if (_hor < 0 && x-(sprite_width/2)-_moverse-_grosor_frame > 0)
		x += _moverse;

	// para que no se salga por la derecha
	if (_hor > 0 && (x+(sprite_width/2)+_moverse+_grosor_frame) < room_width)
		x += _moverse;
	
	image_angle = angulo * -_hor;
}