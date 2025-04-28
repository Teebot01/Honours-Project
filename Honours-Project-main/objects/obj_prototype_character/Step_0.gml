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
}

if (keyboard_check(ord("D")))
{
    xsp =+ 1;
	global.is_facing_right = true;
}

// If player is colliding with collision tilemap
if place_meeting(x, y+1, global.collisions_tilemap)
{
	// Gravity is 0 if player is standing on an an object
	ysp = 0;
	
	// If the player presses the space key, the character jumps
	if keyboard_check_pressed(vk_space) and global.can_jump == true
	{
		ysp =- 4;
	}
}

// Controls what the player can collide with
move_and_collide(xsp, ysp, global.surfaces)

// Controls which direction the character sprite is facing based on player input
if global.is_facing_right == true
{
	image_xscale = +1;
}
else if global.is_facing_right = false
{
	image_xscale = -1;
}