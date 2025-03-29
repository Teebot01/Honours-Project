// Sets position of the cube detector
x = obj_character.x;
y = obj_character.y;

// Controls the location of the cube detector
if global.is_facing_right == true
{
	x = obj_character.x + 25;
}
else if global.is_facing_right = false
{
	x = obj_character.x - 25;
}

		// Picking up blue cube logic
// If cube detector is touching the blue cube, run the picking_up_blue_cube function
if (place_meeting(x, y, obj_blue_cube)) and mouse_check_button_pressed(mb_left) and global.has_blue_cube != true and global.has_green_cube != true and global.has_orange_cube != true and global.cube_is_stored != true
{
	picking_up_blue_cube();
}

// The picking_up_blue_cube function checks if the left mouse button is pressed and if the has_cube variable is not true
// If the statement runs, has_blue_cube = true, the position of the blue cube is set to 0, and the player can no longer jump
function picking_up_blue_cube()
{
	obj_character.sprite_index = spr_eating;
	global.has_blue_cube = true;	
	obj_blue_cube. x = 0;
	obj_blue_cube. y = 0;
	global.can_jump = false;
	obj_blue_cube.image_alpha = 0;
	global.cube_is_stored = true;
}

		// Picking up orange cube logic
		
// If cube detector is touching the orange cube, run the picking_up_orange_cube function
if (place_meeting(x, y, obj_orange_cube))
{
	picking_up_orange_cube();
}

// The picking_up_orange_cube function checks if the left mouse button is pressed and if the has_cube variable is not true
// If the statement runs, has_blue_cube = true, the position of the blue cube is set to 0, and the player can no longer jump
function picking_up_orange_cube()
{
	if mouse_check_button_pressed(mb_left) and global.has_orange_cube != true and global.has_blue_cube != true and global.has_green_cube != true
	{
		obj_character.sprite_index = spr_eating;
		global.has_orange_cube = true;	
		obj_orange_cube. x = 0;
		obj_orange_cube. y = 0;
		global.can_jump = false;
		obj_orange_cube.image_alpha = 0;
		global.cube_is_stored = true;
	}
}

		// Picking up green cube logic
		
// If cube detector is touching the green cube, run the picking_up_green_cube function
if (place_meeting(x, y, obj_green_cube))
{
	picking_up_green_cube();
}

// The picking_up_green_cube function checks if the left mouse button is pressed and if the has_green_cube variable is not true
// If the statement runs, has_green_cube = true, the position of the green cube is set to 0, and the player can no longer jump
function picking_up_green_cube()
{
	if mouse_check_button_pressed(mb_left) and global.has_orange_cube != true and global.has_blue_cube != true and global.has_green_cube != true
	{
		obj_character.sprite_index = spr_eating;
		global.has_green_cube = true;	
		obj_green_cube. x = 0;
		obj_green_cube. y = 0;
		global.can_jump = false;
		obj_green_cube.image_alpha = 0;
		global.cube_is_stored = true;
	}
}

		// placing down blue cube logic
		
// If the right mouse button is pressed and the has_blue_cube variable = true, the blue cube's position = the position of the cube detector,
// has_blue_cube = false and the player can jump again
if mouse_check_button_pressed(mb_right) and global.has_blue_cube == true and !place_meeting(x, y, global.collisions)
{	
	obj_blue_cube. x = x;
	obj_blue_cube. y = y;
	global.has_blue_cube = false;
	global.can_jump = true;
	obj_blue_cube.image_alpha = 1;
	global.cube_is_stored = false;
}

		// placing down orange cube logic
		
// If the right mouse button is pressed and the has_orange_cube variable = true, the orange cube's position = the position of the cube detector,
// has_orange_cube = false and the player can jump again
if mouse_check_button_pressed(mb_right) and global.has_orange_cube == true and !place_meeting(x, y, global.collisions)
{	
	obj_orange_cube. x = x;
	obj_orange_cube. y = y;
	global.has_orange_cube = false;
	global.can_jump = true;
	obj_orange_cube.image_alpha = 1;
	global.cube_is_stored = false;
}

		// placing down green cube logic
		
// If the right mouse button is pressed and the has_green_cube variable = true, the green cube's position = the position of the cube detector,
// has_green_cube = false and the player can jump again
if mouse_check_button_pressed(mb_right) and global.has_green_cube == true and !place_meeting(x, y, global.collisions)
{	
	obj_green_cube. x = x;
	obj_green_cube. y = y;
	global.has_green_cube = false;
	global.can_jump = true;
	obj_green_cube.image_alpha = 1;
	global.cube_is_stored = false;
}