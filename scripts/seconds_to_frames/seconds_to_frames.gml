/// @function                 seconds_to_frame(_n);
/// @param {real}  _n         The number of seconds to convert
/// @returns {real}			  The number of frames
/// @description              Returns the number of frames that would correspond to a amount of time in seconds
function seconds_to_frames(_n) {
	return game_get_speed(gamespeed_fps) * _n / global.debug_speedup_factor;
}