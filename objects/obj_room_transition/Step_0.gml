opacity += fade_dir * fade_speed;
if (opacity >= 1 || opacity <= 0) {
	instance_destroy(self);	
}