if (keyboard_check_released(ord("Z"))) {
	if (array_length(sayings) > 0) {
		instance_create_layer(x, y, "Instances", obj_dialogue, {
			sayings: sayings
		});
	}
	audio_play_sound(snd_confirm, 1, false);
	instance_destroy();		
}