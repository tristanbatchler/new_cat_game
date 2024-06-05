var _bg_x = ds_map_find_first(background_map_x);
repeat (ds_map_size(background_map_x)) {
	
	var _hspd = 0;
	if (ds_map_exists(background_map_hspd, _bg_x)) {
		_hspd = background_map_hspd[? _bg_x];
	}
	
	var _multiplier = 0;
	if (cam.x > vw / 2 && cam.x < room_width - vw / 2) {
		_multiplier = background_map_x[? _bg_x];
	}

	layer_hspeed(_bg_x, _multiplier * cam.x_vel + _hspd);
	
	_bg_x = ds_map_find_next(background_map_x, _bg_x);
}



if (cam.y > vh / 2 && cam.y < room_height - vh / 2) {
	var _bg_y = ds_map_find_first(background_map_y);
	repeat (ds_map_size(background_map_y)) {	
		layer_y(_bg_y, cam.y - vh / 2);
		_bg_y = ds_map_find_next(background_map_y, _bg_y);
	}
}
