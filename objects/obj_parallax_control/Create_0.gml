background_map_x = ds_map_create();
background_map_x[? layer_get_id("Background_Sky")] = 1.0;
background_map_x[? layer_get_id("Background_Godrays")] = 1.0;
background_map_x[? layer_get_id("Background_Clouds_Far")] = 1.0;
background_map_x[? layer_get_id("Background_Mountains_Farthest")] = 0.98;
background_map_x[? layer_get_id("Background_Clouds_Near")] = 0.96;
background_map_x[? layer_get_id("Background_Mountains_Further")] = 0.94;
background_map_x[? layer_get_id("Background_Mountains_Far")] = 0.92;
background_map_x[? layer_get_id("Background_Mountains_Near")] = 0.90;
background_map_x[? layer_get_id("Background_Mountains_Nearest")] = 0.88;

background_map_y = ds_map_create();
background_map_y[? layer_get_id("Background_Sky")] = 1.0;
background_map_y[? layer_get_id("Background_Godrays")] = 1.0;
background_map_y[? layer_get_id("Background_Clouds_Far")] = 1.0;
background_map_y[? layer_get_id("Background_Mountains_Farthest")] = 0.98;
background_map_y[? layer_get_id("Background_Clouds_Near")] = 0.96;
background_map_y[? layer_get_id("Background_Mountains_Further")] = 0.94;
background_map_y[? layer_get_id("Background_Mountains_Far")] = 0.92;
background_map_y[? layer_get_id("Background_Mountains_Near")] = 0.90;
background_map_y[? layer_get_id("Background_Mountains_Nearest")] = 0.88;

background_map_hspd = ds_map_create();
background_map_hspd[? layer_get_id("Background_Clouds_Far")] = 0.05;
background_map_hspd[? layer_get_id("Background_Clouds_Near")] = 0.10;

cam = instance_find(obj_camera, 0);
var _v = view_get_camera(view_current);
vw = camera_get_view_width(_v);
vh = camera_get_view_height(_v);

var _bg_x = ds_map_find_first(background_map_x);
repeat (ds_map_size(background_map_x)) {
	//layer_x(_bg_x, cam.x - vw / 2);
	_bg_x = ds_map_find_next(background_map_x, _bg_x);
}


var _bg_y = ds_map_find_first(background_map_y);
repeat (ds_map_size(background_map_y)) {
    layer_y(_bg_y, cam.y - vh / 2);
    _bg_y = ds_map_find_next(background_map_y, _bg_y);
}

var _bg_hspd = ds_map_find_first(background_map_hspd);
repeat (ds_map_size(background_map_hspd)) {
	var _hspd = background_map_hspd[? _bg_hspd];
	layer_hspeed(_bg_hspd, _hspd);
	_bg_hspd = ds_map_find_next(background_map_hspd, _bg_hspd);
}
	