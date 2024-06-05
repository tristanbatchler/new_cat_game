function will_collide_with_floor(_x, _y) {
	var _solid_layers = ["Grass", "Brick"];
	for (var _i = 0; _i < array_length(_solid_layers); _i++) {
		var _layer_name = _solid_layers[_i];
		var _tilemap_id = layer_tilemap_get_id(_layer_name)
		if (place_meeting(_x, _y, _tilemap_id)) {
			return true;
		}
	}
	return false;
}