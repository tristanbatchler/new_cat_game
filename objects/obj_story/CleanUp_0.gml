global.storytime = false;
if (!array_contains(global.storylines_completed, object_index)) {
	array_push(global.storylines_completed, object_index);
}