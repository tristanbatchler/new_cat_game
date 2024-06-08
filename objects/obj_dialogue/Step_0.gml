if (keyboard_check_released(ord("Z"))) {
	if (array_length(texts) > 0) {
		draw_dialogue(texts);
	}
	audio_play_sound(snd_confirm, 1, false);
	instance_destroy();		
}