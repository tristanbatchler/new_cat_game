/// @desc Converts x,y in game world to gui x,y
/// @param {real} _x x position in game world
/// @param {real} _y y position in game world
/// @returns {array<Real>} array contains x,y position in gui
function worldxy_to_guixy(_x, _y) {
	var _cam = view_camera[view_current];
	var _cx = camera_get_view_x(_cam);
	var _cy = camera_get_view_y(_cam);

	var _off_x = _x - _cx; // x is the normal x position
	var _off_y = _y - _cy; // y is the normal y position
	// convert to gui
	var _off_x_percent = _off_x / room_width;//camera_get_view_width(_cam);
	var _off_y_percent = _off_y / room_height;//camera_get_view_height(_cam);
       
	var _gui_x = _off_x_percent * display_get_gui_width()
	var _gui_y = _off_y_percent * display_get_gui_height()
	return [_gui_x,_gui_y];
}