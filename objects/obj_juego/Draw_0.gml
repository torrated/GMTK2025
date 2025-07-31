/// @description PAUSA

if (estado == ESTADOS_JUEGO.pausado)
{
	var _halign = draw_get_halign();
	var _valign = draw_get_valign();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "PAUSA");
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}