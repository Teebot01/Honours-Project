// Position of icon
x = obj_character.x
y = obj_character.y - 25

// If the player has the cube, the icon becomes visible, if not. Then it is invisible
if global.has_orange_cube == true
{
	image_alpha = 1
}
else if global.has_orange_cube == false
{
	image_alpha = 0
}