if (global.storytime) {
	x_input = 0;
	jump_pressed = false;
	jump_held = false;
	sprite_index = idle_animation;
} else {
	x_input = real(keyboard_check(vk_right)) - real(keyboard_check(vk_left));
	var _jump_key = INPUT_ACTION;
	jump_pressed = keyboard_check_pressed(_jump_key);
	jump_held = keyboard_check(_jump_key);
	fall_through_held = keyboard_check(INPUT_DOWN);
}