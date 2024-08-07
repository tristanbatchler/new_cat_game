#macro RES_W 420
#macro RES_H 315
#macro RES_SCALE 3

x = obj_player.x;
y = obj_player.y;

// Create the camera
camera = camera_create_view(0, 0, RES_W, RES_H);
view_set_camera(0, camera);

view_width = RES_W / zoom;
view_height = RES_H / zoom;

camera_set_view_size(camera, view_width, view_height);

var _window_width = RES_W * RES_SCALE;
var _window_height = RES_H * RES_SCALE;

// Resize window & application surface
window_set_size(_window_width, _window_height);

surface_resize(application_surface, _window_width * 2, _window_height * 2); // 2x surface for smoothest camera movement

display_set_gui_size(_window_width, _window_height);

// Center window
var _display_width = display_get_width();
var _display_height = display_get_height();
window_set_position((_display_width - _window_width) / 2, (_display_height - _window_height) / 2);

target = obj_player;
lookahead_distance = 32.0;

x_vel = 0;
y_vel = 0;
max_spd = 20.0;
spd = 0;

chasing = true;
chase_seconds = 0.3;