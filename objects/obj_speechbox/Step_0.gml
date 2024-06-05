if (
	mouse_x > x - half_box_width && 
	mouse_x < x + half_box_width && 
	mouse_y > y - half_box_height && 
	mouse_y < y + half_box_height
) {
	window_set_cursor(cr_handpoint);
	
	if (mouse_check_button_released(mb_left)) {
		if (array_length(texts) > 0) {
			draw_speech(speaker, texts);
		}
		instance_destroy();	
	}
	
} else {
	window_set_cursor(cr_default);	
}
