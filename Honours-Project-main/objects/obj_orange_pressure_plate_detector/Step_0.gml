if place_meeting(x, y, obj_orange_cube)
{
	obj_orange_light_off.sprite_index = spr_orange_icon;
	global.orange_pressure_plate_activated = true;
	
}
else
{
	obj_orange_light_off.sprite_index = spr_orange_light_off;
	global.blue_pressure_plate_activated = false;
}