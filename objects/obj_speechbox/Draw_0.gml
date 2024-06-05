// Draw a speech bubble with the given text

// Follow the speaker
x = clamp(speaker.x, half_box_width, room_width - half_box_width);
y = clamp(speaker.bbox_top - 32, half_box_height, room_height - half_box_height);


// Draw the bubble
draw_set_alpha(0.8);
draw_set_color(c_white);
draw_roundrect_ext(x - half_box_width, y - half_box_height, x + half_box_width, y + half_box_height, 6, 6, false);

// Draw the triangle pointing down
draw_triangle(
	speaker.x - 4, y + half_box_height, 
	speaker.x + 4, y + half_box_height, 
	speaker.x    , y + half_box_height + 8, 
	false
);



// Draw the text
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);

// Draw the continue prompt
//draw_sprite_ext(sprite_index, image_index, x + half_box_width - 14, y + half_box_height - 12, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
