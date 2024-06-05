function run_jump_aesthetics() {
	var _jump_snd = jump_sounds[irandom(array_length(jump_sounds) - 1)];
	audio_play_sound_at(_jump_snd, x, y, 0, 500, 1000, 1.5, false, 0);	
}