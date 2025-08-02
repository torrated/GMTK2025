/// @description logo fade in

if (alarm_i < alarm_max)
{
	image_alpha += 1/alarm_max;
	alarm_i += 1;
	alarm[1] = 1;
}
else
{
	alarm_i = 0;
	alarm[0] = 1;
}