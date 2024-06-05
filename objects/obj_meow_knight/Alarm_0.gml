var _bound_left = place_meeting(x - 1, y, obj_boundary) || will_collide_with_floor(x - 1, y);
var _bound_right = place_meeting(x + 1, y, obj_boundary) || will_collide_with_floor(x + 1, y);

if (x_input == 0) {
	x_input = choose(-1, 1);
	if ((x_input == -1 && _bound_left) || (x_input == 1 && _bound_right)) {
		x_input *= -1;	
	}
} else {
	x_input = 0;	
}

if (random(1) < 0.2 && !speaking) {
	draw_speech(self, [choose(
		"I'm playing!", 
		"Comin' through!", 
		"Woohoo!", 
		"I need legal representation stat!"
	)]);
}

alarm_set(0, random_range(50, 200));