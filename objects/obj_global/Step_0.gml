if (keyboard_check_released(ord("F"))) {
	var _current_spd = game_get_speed(gamespeed_fps);
	var _new_spd = _current_spd > 60 ? 60 : 500;
	game_set_speed(_new_spd, gamespeed_fps);
	global.debug_speedup_factor = _new_spd / 60;
}

if (keyboard_check_released(ord("R"))) {
	game_restart();	
}