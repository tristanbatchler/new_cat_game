function can_jump() {
	var _coyote_pixels = x_vel * coyote_time * game_get_speed(gamespeed_fps);

	for (var _i = 0; _i < jump_buffer; _i++) {
		if (abs(_coyote_pixels) <= math_get_epsilon() &&  will_collide_with_floor(x, y + _i)) {
			return true;
		}
	
		for (var _j = 0; abs(_j) < abs(_coyote_pixels); _j += sign(_coyote_pixels)) {
			if (will_collide_with_floor(x - _j, y + _i)) {
				return true;
			}
		}
	}
	return false;
}