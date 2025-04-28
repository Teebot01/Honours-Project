// If the orange cube is making contact with the orange pressure plate detector, 
//the orange light turns on, and the pressure plate being activated is true. 
//If not making contact, the light is switched off and the pressure plate being actiavted = false
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