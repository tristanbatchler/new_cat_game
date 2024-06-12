var _maybe_actor = instance_place(x, y - 1, obj_actor);
if (allow_pass && _maybe_actor == noone) {
	allow_pass = false;	
}

// So the actor doesn't get stuck inside the platform
_maybe_actor = instance_place(x, y, obj_actor);
if (!allow_pass && _maybe_actor != noone && _maybe_actor.bbox_bottom > bbox_top) {
	allow_pass = true;	
}