function draw_dialogue(_portrait_sprite, _texts) {

	var _box = instance_create_layer(0, 0, "Instances", obj_dialogue, {
		texts: _texts
	});
	
	_box.portrait_sprite = _portrait_sprite;

}