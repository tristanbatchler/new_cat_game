function run_step_aesthetics() {
	if (sprite_index != run_animation) {
		return;	
	}
	
	// Step frames are 0 and 3
	var _ii = image_index;
	if (!((_ii >= 0 && _ii < 1) || (_ii >= 3 && _ii < 4))) {
		return;	
	}
	
	var _num_step_sounds =  array_length(step_sounds);
	var _playing = false;
	for (var _i = 0; _i < _num_step_sounds; _i++) {
		var _snd_to_check = step_sounds[_i];
		if (audio_is_playing(_snd_to_check)) {
			_playing = true;
			break;
		}
	}
	
	if (!_playing) {
		var _step_snd = step_sounds[irandom(_num_step_sounds - 1)];
		audio_play_sound_at(_step_snd, x, y, 0, 500, 1000, 1.5, false, 0);	
	}
}