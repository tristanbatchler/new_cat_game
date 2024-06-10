// Create the camera
camera = camera_create_view(0, 0, res_w, res_h);
view_set_camera(0, camera);

var _window_width = res_w * res_scale;
var _window_height = res_h * res_scale;

// Resize window & application surface
window_set_size(_window_width, _window_height);
surface_resize(application_surface, _window_width, _window_height);

display_set_gui_size(_window_width, _window_height);

// Center window
var _display_width = display_get_width();
var _display_height = display_get_height();
window_set_position((_display_width - _window_width) / 2, (_display_height - _window_height) / 2);

target = obj_player;
lookahead_distance = 32.0;

x_vel = 0;
y_vel = 0;
max_spd = 10.0;
spd = 0;

chasing = true;
chase_seconds = 0.3;