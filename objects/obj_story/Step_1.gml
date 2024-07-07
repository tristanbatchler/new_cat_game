if (sequence >= 0) {
	global.storytime = true;	
}

if (variable_global_exists("storylines_completed") && array_contains(global.storylines_completed, object_index)) {
	instance_destroy(self);
}