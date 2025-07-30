/// @description

var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);

x += _hor * velocidad;

image_angle = angulo * -_hor;