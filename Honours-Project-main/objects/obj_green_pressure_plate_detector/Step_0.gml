// If the green cube is making contact with the green pressure plate detector, 
//the green light turns on, and the pressure plate being activated is true. 
//If not making contact, the light is switched off and the pressure plate being actiavted = false
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