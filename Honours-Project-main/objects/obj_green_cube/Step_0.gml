// Objects the cube can collide with
move_and_collide(xsp, ysp, global.collisions);

// Proves that the cube does something when placed on the pressure plate detector
if (place_meeting(x, y, obj_green_pressure_plate_detector))
{
	show_debug_message("Cube placed on pressure plate");
}

if place_meeting(x, y, obj_acid)
{
	room_goto(Room2);
	audio_stop_all();
}