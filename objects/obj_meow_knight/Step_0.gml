jump_pressed = false;

if (x_input == 0) {
	image_xscale = sign(obj_player.x - x);
}

if (place_meeting(x + 2*x_vel, y, obj_boundary)) {
	x_input = 0;
}

if (will_collide_with_floor(x + 5*x_vel, y)) {
	if (!will_collide_with_floor(x + 5*x_vel, y - sprite_height)) {
		jump_pressed = true;
	} else {
		x_input = 0;	
	}
}

event_inherited();