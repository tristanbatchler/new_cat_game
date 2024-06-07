function draw_dialogue(_texts) {

	var _box = instance_create_layer(0, 0, "Instances", obj_dialogue, {
		texts: _texts
	});

}