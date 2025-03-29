if global.blue_pressure_plate_activated == true and global.green_pressure_plate_activated == true and global.orange_pressure_plate_activated == true
{
	door_timer--;
	sprite_index = spr_door_opening;
	if door_timer <= 0
	{
		sprite_index = spr_door_open;
		global.door_is_open = true;
	}
}

else
{
	sprite_index = spr_door_closed;
	global.door_is_open = false;
}