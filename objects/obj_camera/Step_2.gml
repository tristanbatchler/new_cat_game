var _target_x = target.x;
var _target_y = target.y;
if (object_get_parent(target) == obj_actor) {
	_target_y -= target.sprite_height;
}
if (target == obj_player) {
	_target_x += target.direction_facing * lookahead_distance + target.x_vel;
	_target_y += target.y_vel;
}


if (obj_player.y_vel != 0) {
	chasing = true;	
}
if (!chasing && abs(obj_player.x_vel) >= obj_player.max_x_spd && alarm_get(0) < 0) {
	set_alarm_seconds(0, 0.4);
} else if (chasing && obj_player.x_vel == 0) {
	chasing = false;	
}


var _dir = point_direction(x, y, _target_x, _target_y);
var _dst = point_distance(x, y, _target_x, _target_y);

if (chasing) {
	spd = clamp(_dst / 10, 0, max_spd);
} else {
	spd = clamp(_dst / 50, 0, max_spd);
	//spd /= 1.1;
}


if (_dst > 0.1) {
	x_vel = lengthdir_x(spd, _dir)
	y_vel = lengthdir_y(spd, _dir);
	x += x_vel;
	y += y_vel;

} else {
	x_vel = 0;
	y_vel = 0;
}

camera_set_view_pos(camera, clamp(x - RES_W / 2, 0, room_width - RES_W), clamp(y - RES_H / 2, 0, room_height - RES_H));