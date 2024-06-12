draw_set_color(c_black);
var _old_alpha = draw_get_alpha()
draw_set_alpha(opacity);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(_old_alpha);