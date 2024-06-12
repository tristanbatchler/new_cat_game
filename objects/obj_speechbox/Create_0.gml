text = array_shift(texts);
padding = 4; // on all sides

scale = 0.5;

var _text_width = string_width(text) * scale;
var _text_height = string_height(text) * scale;
var _box_width = _text_width + padding * 2;
var _box_height = _text_height + padding * 2;
half_box_width = _box_width / 2;
half_box_height = _box_height / 2;