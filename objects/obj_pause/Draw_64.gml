/// @description Muestra el volumen

var _volumen = int64(10*audio_group_get_gain(audiogroup_default));

switch(_volumen)
{
	case 0: _volumen = "mute"; break;
	case 10: _volumen = "max"; break;
}

var _halign = draw_get_halign();
var _valign = draw_get_valign();
var _color = draw_get_color();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);

draw_text_transformed(room_width/2,room_height/2,$"Volume: {_volumen}",2,2,0);

draw_set_halign(_halign);
draw_set_valign(_valign);
draw_set_color(_color);