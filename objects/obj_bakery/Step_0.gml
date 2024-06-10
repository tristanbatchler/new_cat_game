var _in_prompt_range = distance_to_object(obj_player) < 10;

if (!instance_exists(prompt) && _in_prompt_range) {
	prompt = draw_button_prompt(INPUT_UP, obj_player.x, obj_player.y - obj_player.sprite_height - sprite_get_height(spr_button_press));	
	prompt.image_alpha = 0;

} else if (instance_exists(prompt)) {
	prompt.x = obj_player.x;
	prompt.y = obj_player.y - obj_player.sprite_height - sprite_get_height(spr_button_press);
	
	if (_in_prompt_range) {
		if (prompt.image_alpha < 1) {
			prompt.image_alpha = min(prompt.image_alpha + fade, 1);
		}
	} else {
		if (prompt.image_alpha > 0) {
			prompt.image_alpha = max(prompt.image_alpha - fade, 0);	
		} else {
			instance_destroy(prompt);
			prompt = noone;
		}
	}
	
	if (keyboard_check_released(INPUT_UP)) {
		room_goto(rm_bakery);	
	}
}	