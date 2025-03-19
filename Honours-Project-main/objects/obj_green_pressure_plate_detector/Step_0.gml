if place_meeting(x, y, obj_green_cube)
{
	obj_green_light_off.sprite_index = spr_green_icon;
	global.green_pressure_plate_activated = true;
}
else
{
	obj_green_light_off.sprite_index = spr_green_light_off;
	global.green_pressure_plate_activated = false;
}