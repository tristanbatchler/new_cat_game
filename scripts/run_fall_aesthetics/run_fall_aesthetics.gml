function run_fall_aesthetics() {
	sprite_index = jump_animation;
	
	var _land_snd = land_sounds[irandom(array_length(land_sounds) - 1)];
	audio_play_sound_at(_land_snd, x, y, 0, 500, 1000, 1.5, false, 0, abs(y_vel / max_y_spd));	
	
	if (y_vel >= max_y_spd) {
		part_particles_burst(global.particle_system, x, y, ps_dust);	
	}
}