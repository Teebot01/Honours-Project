// Sets window size
window_set_size(1920, 1080);

// Sets initial gravity
xsp = 0;
ysp = 0;

//Player doesn't have any cubes
global.has_blue_cube = false;
global.has_green_cube = false;
global.has_orange_cube = false;

// Player is facing right
global.is_facing_right = true;

// Player can jump
global.can_jump = true;

// Objects the player can collide with
global.collisions_tilemap = layer_tilemap_get_id("Tiles_1");
