if (!instance_exists(prompt) && distance_to_object(obj_player) < 10) {
	prompt = draw_button_prompt(INPUT_UP, obj_player.x, obj_player.y - obj_player.sprite_height - sprite_get_height(spr_button_press));	

} else if (instance_exists(prompt)) {
	prompt.x = obj_player.x;
	prompt.y = obj_player.y - obj_player.sprite_height - sprite_get_height(spr_button_press);

	if (distance_to_object(obj_player) > 10) {
		instance_destroy(prompt);
		prompt = noone;
	}
}