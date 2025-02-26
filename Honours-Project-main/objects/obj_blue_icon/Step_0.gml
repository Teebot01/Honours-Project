// Position of icon
x = obj_prototype_character.x
y = obj_prototype_character.y - 25

// If the player has the cube, the icon becomes visible, if not. Then it is invisible
if global.has_blue_cube == true
{
	image_alpha = 1
}
else if global.has_blue_cube == false
{
	image_alpha = 0
}