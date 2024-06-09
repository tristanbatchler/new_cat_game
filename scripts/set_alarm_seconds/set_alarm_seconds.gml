/// @function set_alarm_seconds(_n, _t);
/// @param {real} _n The alarm index to set
/// @param {real} _t The number of seconds to set the alarm to
function set_alarm_seconds(_n, _t) {
	alarm_set(_n, seconds_to_frames(_t));
}