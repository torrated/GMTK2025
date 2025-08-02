/// @description logo fade out

if (alarm_i < alarm_max)
{
	image_alpha -= 1/alarm_max;
	alarm_i += 1;
	alarm[0] = 1;
}
else
	room_goto(Room1);