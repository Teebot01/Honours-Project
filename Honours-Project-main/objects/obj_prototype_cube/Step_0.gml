// Objects the cube can collide with
move_and_collide(xsp, ysp, global.surfaces);

// Proves that the cube does something when placed on the pressure plate detector
if (place_meeting(x, y, obj_prototype_pressure_plate_detector))
{
	show_debug_message("Cube placed on pressure plate");
}

