// Draw the portrait frame (empty)
draw_sprite_ext(spr_pf, 0, 0, wh - spr_pf_height * scale, scale, scale, 0, c_white, 1);

// Dialogue box
draw_sprite_ext(spr_db, 0, spr_pf_width * scale, wh - spr_db_height * scale, scale, scale, 0, c_white, 1);

// Nameplate frame (empty)
draw_sprite_ext(
	spr_nameplate, 
	0, 
	0, 
	wh - (spr_pf_height + sprite_get_height(spr_nameplate)) * scale,
	scale,
	scale,
	0,
	c_white,
	1
);

// Portrait dimensions
var _pw = sprite_get_width(portrait_sprite);
var _ph = sprite_get_height(portrait_sprite);

var _dw = (spr_pf_width - _pw) / 2;
var _dh = (spr_pf_height - _ph) / 2;

// Draw the portrait
draw_sprite_ext(
	portrait_sprite, 
	0, 
	_dw * scale, 
	wh - (_ph + _dh) * scale, 
	scale, 
	scale, 
	0, 
	c_white, 
	1
);

// Draw the text
draw_set_color(make_color_rgb(114, 81, 45));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed(
	spr_pf_width * scale + padding, 
	wh - spr_db_height * scale + padding, 
	partial_text,
	1.5, 
	1.5,
	0
);


// Draw the name
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(
	sprite_get_width(spr_nameplate) * scale / 2,
	wh - (spr_pf_height + sprite_get_height(spr_nameplate) / 2) * scale,
	speaker_name,
	1.5,
	1.5,
	0
)

// Draw the prompt to continue
//draw_sprite_ext(
//	sprite_index, 
//	image_index, 
//	ww - (spr_prompt_width - 1) * scale - padding, 
//	wh - (spr_prompt_height - 1) * scale - padding, 
//	scale, 
//	scale, 
//	0, 
//	c_white, 
//	1
//);

