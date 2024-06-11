/******** Physics ***********/
var _grounded = will_collide_with_floor(x, y + 1);
var _can_jump = can_jump();

if (x_input != 0) {
	direction_facing = x_input;
	x_vel = clamp(x_vel + x_input * x_accel, -max_x_spd, max_x_spd);
	run_step_aesthetics();
} else {
	if (abs(x_vel) > x_accel) {
		x_vel -= sign(x_vel) * x_decel;
	} else {
		x_vel = 0;
	}
}

if (!speaking && _can_jump && jump_pressed) {
	y_vel = -jump_spd;
	run_jump_aesthetics();
}

// Restrict jump height if release jump button mid jump
if (y_vel < 0 && !jump_held) {
	y_vel += extra_grav_for_jump_release;
}

if (!_grounded) {
	y_vel = clamp(y_vel + grav, -jump_spd, max_y_spd);	
}


if (!will_collide_with_floor(x + x_vel, y)) {
	x += x_vel;	
	
} else {
	var _dx = sign(x_vel);
	while (!will_collide_with_floor(x + _dx, y)) {
		x += _dx;
	}
	x_vel = 0;
}

if (!will_collide_with_floor(x, y + y_vel)) {
	y += y_vel;	


} else {
	var _dy = sign(y_vel);
	while (!will_collide_with_floor(x, y + _dy)) {
		y += _dy;
	}
	run_fall_aesthetics();
	y_vel = 0;
}


// Fall down throuh semisolid blocks
var _maybe_semisolid = instance_place(x, y + 1, obj_semisolid);
if (_maybe_semisolid != noone && fall_through_held) {
	_maybe_semisolid.allow_pass = true;
}


/********* Aesthetics **********/
if (_grounded) {
	sprite_index = x_input == 0 ? idle_animation : run_animation;	
} else {
	sprite_index = jump_animation;
	
	if (y_vel < -max_y_spd / 10) {
		image_index = clamp(image_index, 0, jump_animation_parts[0]);	
	} else if (y_vel < max_y_spd / 10) {
		image_index = clamp(image_index, jump_animation_parts[1], jump_animation_parts[2]);
	} else {
		image_index = jump_animation_parts[3];
	}
}

image_xscale = abs(image_xscale) * direction_facing;
