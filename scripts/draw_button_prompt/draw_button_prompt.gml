/// @function draw_button_prompt(_label);
/// @param _label {INPUT_*} The control input to suggest e.g. INPUT_ACTION
/// @param _x {real} The x-coordinate to draw the prompt
/// @param _y {real} You can figure this one out
/// @param _scale {real} The size of the prompt e.g. 1 for normal or 2 for double (default: 1)
/// @param _to_gui {bool} Whether to draw the prompt on a GUI label or not (default: false)
/// @returns {object} The button prompt object so you can change its position or destroy it
function draw_button_prompt(_label, _x, _y, _scale = 1, _to_gui = false) {
	var _prompt = instance_create_layer(_x, _y, "UI", obj_button_prompt, {
		label: _label,
		image_xscale: _scale,
		image_yscale: _scale,
		to_gui: _to_gui
	});
	
	return _prompt;
}