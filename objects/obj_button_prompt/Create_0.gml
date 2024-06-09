cam = view_get_camera(view_current);
cx = camera_get_view_x(cam);
cy = camera_get_view_y(cam);
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);

bob = 0;
sprite_order = [INPUT_ACTION, INPUT_UP];

_render_button_pressing = function() {
	draw_sprite_ext(
		sprite_index, 
		image_index, 
		x, 
		y, 
		image_xscale, 
		image_yscale, 
		0, 
		c_white, 
		1
	);

	draw_sprite_ext(
		spr_button_labels, 
		array_get_index(sprite_order, label), 
		x, 
		y + (bob - 5) * image_yscale, 
		image_xscale,
		image_yscale,
		0,
		make_color_rgb(118, 41, 45),
		1
	);
}