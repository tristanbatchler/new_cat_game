draw_sprite_ext(spr_pf, 0, 0, wh - spr_pf_height * scale, scale, scale, 0, c_white, 1);
draw_sprite_ext(spr_db, 0, spr_pf_width * scale, wh - spr_db_height * scale, scale, scale, 0, c_white, 1);


var _pw = sprite_get_width(portrait_sprite);
var _ph = sprite_get_height(portrait_sprite);
var _dw = (spr_pf_width - _pw) / 2;
var _dh = (spr_pf_height - _ph) / 2;

draw_sprite_ext(full_text[1], 0, _dw * scale, wh - (_ph + _dh) * scale, scale, scale, 0, c_white, 1);

var _padding = 20;

draw_set_color(make_color_rgb(114, 81, 45));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed(
	spr_pf_width * scale + _padding, 
	wh - spr_db_height * scale + _padding, 
	partial_text,
	1.5, 
	1.5,
	0
);

draw_sprite_ext(sprite_index, image_index, ww - (spr_prompt_width - 1) * scale, wh - (spr_prompt_height - 1) * scale, scale, scale, 0, c_white, 1);