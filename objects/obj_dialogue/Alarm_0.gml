partial_text += string_char_at(full_text[0], text_idx);
text_idx++;

var _n_talk_snds = array_length(talk_sounds);

//var _playing = false;
//for (var _i = 0; _i < _n_talk_snds; _i++) {
//	if (audio_is_playing(talk_sounds[_i])) {
//		_playing = true;
//		break;
//	}
//}

if (true) {//!_playing) {
var _idx = irandom(_n_talk_snds - 1);
audio_play_sound(talk_sounds[_idx], 0, false);
}


if (text_idx <= string_length(full_text[0])) {
	alarm_set(0, text_speed);
}