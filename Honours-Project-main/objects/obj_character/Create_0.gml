// Set window size of the game
window_set_size(1920, 1080);

// Initialise gravity
xsp = 0;
ysp = 0;

// Array of collidable objects for player
global.collisions = [layer_tilemap_get_id("Tiles_1"), obj_blue_cube, obj_green_cube,
obj_orange_cube, obj_orange_pressure_plate, obj_blue_pressure_plate, obj_green_pressure_plate];

// Player isn't holding any cubes
global.has_blue_cube = false;
global.has_green_cube = false;
global.has_orange_cube = false;
global.is_facing_right = true;

// Player can jump
global.can_jump = true;
