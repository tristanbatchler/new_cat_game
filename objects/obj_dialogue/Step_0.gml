if (keyboard_check_released(ord("Z"))) {
	if (array_length(texts) > 0) {
		draw_dialogue(texts);
	}
	instance_destroy();		
}