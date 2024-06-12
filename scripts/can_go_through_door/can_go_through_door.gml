function can_go_through_door() {
	return keyboard_check_released(INPUT_UP) && in_prompt_range
}