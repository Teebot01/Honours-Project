window_set_size(1920, 1080);
xsp = 0;
ysp = 0;
global.collisions = [layer_tilemap_get_id("Tiles_1"), obj_blue_cube, obj_green_cube,
obj_orange_cube, obj_orange_pressure_plate, obj_blue_pressure_plate, obj_green_pressure_plate,
obj_horizontal_platform, obj_right_vertical_platform_up, obj_right_vertical_platform_down,
obj_left_vertical_platform_down, obj_right_vertical_platform_up];
global.has_blue_cube = false;
global.has_green_cube = false;
global.has_orange_cube = false;
global.is_facing_right = true;
global.can_jump = true;
