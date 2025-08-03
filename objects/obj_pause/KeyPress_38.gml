/// @description Sube el volumen
var _volumen = audio_group_get_gain(audiogroup_default);

if (_volumen < 1)
	_volumen += 0.1;
	
audio_group_set_gain(audiogroup_default,_volumen,0)