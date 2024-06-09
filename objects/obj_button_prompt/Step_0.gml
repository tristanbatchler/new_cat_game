if (keyboard_check_released(label)) {
	audio_play_sound(snd_confirm, 1, false);
	instance_destroy();	
}

bob = ceil(image_number - image_index);	
if (image_index < image_number / 2) {
	bob = floor(image_index);
}