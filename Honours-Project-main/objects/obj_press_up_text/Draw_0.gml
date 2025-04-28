// If the door is open. Set the colour, font and text of the "Press The Up Key" text
if global.door_is_open == true
{
	draw_set_color(c_red);
	draw_set_font(fnt_press_up);
	draw_text(x, y, "Press The Up Key");
}