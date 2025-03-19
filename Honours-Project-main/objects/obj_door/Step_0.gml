if global.blue_pressure_plate_activated and global.green_pressure_plate_activated and global.orange_pressure_plate_activated
{
	door_timer--;
	sprite_index = spr_door_opening
	if door_timer <= 0
	{
		sprite_index = spr_door_open
		global.door_is_open = true;
	}
	
}