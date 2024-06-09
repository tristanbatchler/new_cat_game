function draw_speech(_speaker, _texts) {
	
	_speaker.speaking = true;

	var _box = instance_create_layer(_speaker.x, _speaker.bbox_top - 16, "UI", obj_speechbox, {
		speaker: _speaker,
		texts: _texts
	});
	

}