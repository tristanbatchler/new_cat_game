if (keyboard_check_released(INPUT_ACTION)) {
	if (array_length(sayings) > 0) {
		instance_create_layer(x, y, "Instances", obj_dialogue, {
			sayings: sayings
		});
	}
	instance_destroy();		
}