#region Player Keyboard Input
						// Movement
// Gravity
ysp += 0.1;
// Horizontal movement = 0
xsp = 0;

// Walking
if (keyboard_check(ord("A")))
{
    xsp =- 1;
	global.is_facing_right = false;
	sprite_index = spr_running_normal;
}

else if (keyboard_check(ord("D")))
{
    xsp =+ 1;
	global.is_facing_right = true;
	sprite_index = spr_running_normal;
}

else
{
	sprite_index = spr_idle_normal;
}

if(keyboard_check(ord("R")))
{
	room_restart();
}

if global.cube_is_stored == true
{
		// Walking
	if (keyboard_check(ord("A")))
	{
	    xsp =- 1;
		global.is_facing_right = false;
		sprite_index = spr_running_holding;
	}
	else if (keyboard_check(ord("D")))
	{
	    xsp =+ 1;
		global.is_facing_right = true;
		sprite_index = spr_running_holding;
	}
	else
	{
		sprite_index = spr_idle_holding;
	}
	
	if !place_meeting(x, y+1, global.collisions) and global.can_jump == false
	{
		sprite_index = spr_falling_holding;
	}
}

// Controls what the player can collide with
move_and_collide(xsp, ysp, global.collisions);

// Controls which direction the character sprite is facing based on player input
if global.is_facing_right == true
{
	image_xscale = +1;
}
else if global.is_facing_right = false
{
	image_xscale = -1;
}

#endregion

#region Handling Player Collsions
if place_meeting(x, y+1, global.collisions)
{
	// Gravity is 0 if player is standing on an an object
	ysp = 0;
	
	// If the player presses the space key, the character jumps
	if keyboard_check_pressed(vk_space) and global.can_jump == true
	{
		ysp =- 4.5;
	}
}



// Triggers jumping animation for when the player isn't holding a cube
if !place_meeting(x, y+1, global.collisions) and global.can_jump == true
{
	sprite_index = spr_jumping_normal;
}

if place_meeting(x, y, obj_acid)
{
	room_goto(Room2);
	audio_stop_all();
}

if place_meeting(x, y, obj_door) and global.door_is_open and keyboard_check_pressed(vk_up)
{
	room_goto(Room3);
	audio_stop_all();
}

#endregion