if place_meeting(x, y, obj_blue_cube)
{
	obj_blue_light_off.sprite_index = spr_blue_icon;
	global.blue_pressure_plate_activated = true;
	audio_play_sound(snd_beep, 10, false);
}
else
{
	obj_blue_light_off.sprite_index = spr_blue_light_off;
	global.blue_pressure_plate_activated = false;
}