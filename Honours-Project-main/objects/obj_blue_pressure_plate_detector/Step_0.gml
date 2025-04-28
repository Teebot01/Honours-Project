// If the blue cube is making contact with the blue pressure plate detector, 
//the blue light turns on, and the pressure plate being activated is true. 
//If not making contact, the light is switched off and the pressure plate being actiavted = false
if place_meeting(x, y, obj_blue_cube)
{
	obj_blue_light_off.sprite_index = spr_blue_icon;
	global.blue_pressure_plate_activated = true;
}
else
{
	obj_blue_light_off.sprite_index = spr_blue_light_off;
	global.blue_pressure_plate_activated = false;
}