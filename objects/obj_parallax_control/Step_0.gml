var _cam_x = camera_get_view_x(cam);
var _cam_y = camera_get_view_y(cam);

var _bg_x = ds_map_find_first(background_map_x);
repeat (ds_map_size(background_map_x)) {
	
	var _hspd = 0;
	if (ds_map_exists(background_map_hspd, _bg_x)) {
		_hspd = background_map_hspd[? _bg_x];
	}
	
	var _multiplier = background_map_x[? _bg_x];

	if (_hspd == 0) {
		layer_x(_bg_x, _multiplier * _cam_x);
	} else {
		var _added_hspd = 0;
		if (obj_camera.x > obj_camera.res_w / 2 && obj_camera.x < room_width - obj_camera.res_w / 2) {
			_added_hspd = obj_camera.x_vel;		
		}
		layer_hspeed(_bg_x, _hspd + _added_hspd);
	}	
	
	_bg_x = ds_map_find_next(background_map_x, _bg_x);
}



var _bg_y = ds_map_find_first(background_map_y);
repeat (ds_map_size(background_map_y)) {	
	layer_y(_bg_y, _cam_y);
	_bg_y = ds_map_find_next(background_map_y, _bg_y);
}