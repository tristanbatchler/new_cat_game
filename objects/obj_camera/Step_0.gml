var _target_x = player.x + player.direction_facing * lookahead_distance + player.x_vel;
var _target_y = player.y - player.sprite_height / 2 + player.y_vel;


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