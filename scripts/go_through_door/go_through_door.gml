function go_through_door(_to_room, _to_x, _to_y) {
	obj_player.x = to_x;
	obj_player.y = to_y;
	room_goto(to_room);
}