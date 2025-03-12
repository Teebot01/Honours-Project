if place_meeting(x, y, obj_orange_cube)
{
	obj_orange_light_off.sprite_index = spr_orange_icon;
	global.orange_pressure_plate_activated = true;
	audio_play_sound(snd_beep, 10, false);
	
}
else
{
	obj_orange_light_off.sprite_index = spr_orange_light_off;
	global.blue_pressure_plate_activated = false;
}