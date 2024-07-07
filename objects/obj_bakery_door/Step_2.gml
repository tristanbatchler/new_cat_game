if (can_go_through_door()) {
	if (array_contains(global.storylines_completed, obj_story_meet_ferris_and_goldie)) {
		go_through_door(to_room, to_x, to_y);	
	} else {
		draw_speech(obj_player, ["It's locked..."]);
	}
}