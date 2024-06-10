function will_collide_with_floor(_x, _y) {
	if (place_meeting(_x, _y, obj_solid)) {
		return true;	
	}
	
	var _solid_layers = ["Grass", "Brick", "Stone"];
	for (var _i = 0; _i < array_length(_solid_layers); _i++) {
		var _layer_name = _solid_layers[_i];
		var _tilemap_id = layer_tilemap_get_id(_layer_name)
		if (place_meeting(_x, _y, _tilemap_id)) {
			return true;
		}
	}
	return false;
}