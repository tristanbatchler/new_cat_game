if (global.storytime) {
	x_input = 0;
	jump_pressed = false;
	jump_held = false;
	sprite_index = idle_animation;
} else {
	x_input = real(keyboard_check(vk_right)) - real(keyboard_check(vk_left));
	var _jump_key = ord("Z");
	jump_pressed = keyboard_check_pressed(_jump_key);
	jump_held = keyboard_check(_jump_key);
}

if (keyboard_check_released(ord("F"))) {
	var _current_spd = game_get_speed(gamespeed_fps);
	var _new_spd = _current_spd > 60 ? 60 : 500;
	game_set_speed(_new_spd, gamespeed_fps);	
}

event_inherited();
