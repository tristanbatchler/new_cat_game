x_input = real(keyboard_check(vk_right)) - real(keyboard_check(vk_left));
var _jump_key = ord("Z");
jump_pressed = keyboard_check_pressed(_jump_key);
jump_held = keyboard_check(_jump_key);

event_inherited();
