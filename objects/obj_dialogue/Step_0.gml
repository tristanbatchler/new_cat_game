if (keyboard_check_released(ord("Z"))) {
	if (array_length(texts) > 0) {
		draw_dialogue(portrait_sprite, texts);
	}
	instance_destroy();		
}