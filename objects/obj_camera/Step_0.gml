var _target_x = target.x;
var _target_y = target.y;
if (variable_instance_exists(target, "direction_facing") && variable_instance_exists(target, "lookahead_distance")) {
	_target_x = target.x + target.direction_facing * lookahead_distance + target.x_vel;
	_target_y = target.y - target.sprite_height / 2 + target.y_vel;
}

var _dir = point_direction(x, y, _target_x, _target_y);
var _dst = distance_to_point(_target_x, _target_y);
spd = clamp(_dst / 10, 0, max_spd);

if (_dst > max_spd) {

	x_vel = lengthdir_x(spd, _dir)
	y_vel = lengthdir_y(spd, _dir);
	x += x_vel;
	y += y_vel;

} else {
	x_vel = 0;
	y_vel = 0;
}