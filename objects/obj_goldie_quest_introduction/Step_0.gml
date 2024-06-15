var _currently_talking = instance_exists(obj_dialogue);

if (!instance_exists(obj_goldie) || !instance_exists(obj_hamster_wheel)) {
	show_error("Goldie quest needs to have obj_goldie and obj_hamster_wheel", true);
}

var _goldie = obj_goldie;
var _wheel = obj_hamster_wheel;

if (_goldie.sprite_index == _goldie.run_animation) {
	_wheel.image_speed = _goldie.image_speed;
} else {
	_wheel.image_speed = 0;	
}

if (sequence == -1 && abs(obj_player.x - obj_goldie.x) + abs(obj_player.y - obj_goldie.y) < 100) {
	obj_player.x_input = 0;
	obj_player.x_vel = 0;
	obj_player.sprite_index = obj_player.idle_animation;
	
	_goldie.override_sprite = true;
	_goldie.sprite_index = _goldie.run_animation;
	
	if (alarm_get(0) < 0) {
		set_alarm_seconds(0, 2);
	}
}


else if (sequence == 0) {
    // Goldie dialogue
	_goldie.direction_facing = sign(obj_player.x - _goldie.x);
	_goldie.sprite_index = _goldie.idle_animation;
	obj_camera.target = _goldie;
	if (!_currently_talking) {
	    draw_dialogue(
	        ["Oh frick don't sneak up on me like that!", ACTOR.GOLDIE], 
	        ["Sorry, I was just playing.", ACTOR.GOLDIE],
	        ["This is my only way to blow off steam after a long day's work.", ACTOR.GOLDIE, EMOTE.HAPPY]
	    );
	    sequence++; 
	}
} 

else if (sequence == 1) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; 
    }
}

else if (sequence == 2) {
    _goldie.sprite_index = _goldie.run_animation;
	if (alarm_get(0) < 0) {
		set_alarm_seconds(0, 0.5);
	}
}

else if (sequence == 3) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed *= 1.5;
		set_alarm_seconds(0, 0.5);
	}
}

else if (sequence == 4) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed *= 1.4;
		set_alarm_seconds(0, 1);
	}
}

else if (sequence == 5) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed *= 1.3;
		set_alarm_seconds(0, 2);
	}
}

else if (sequence == 6) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed *= 1.2;
		set_alarm_seconds(0, 2);
	}
}


else if (sequence == 7) {
    _goldie.override_sprite = false;
	if (alarm_get(0) < 0) {
		_goldie.image_speed /= 1.2;
		set_alarm_seconds(0, 2);
	}
}

else if (sequence == 8) {
	if (!_currently_talking) {
	    draw_dialogue(
	        ["Oh... frick...", ACTOR.GOLDIE], 
	        ["let... me...", ACTOR.GOLDIE],
	        ["catch... my...", ACTOR.GOLDIE],
			["fricken...", ACTOR.GOLDIE],
			["breath...", ACTOR.GOLDIE]
	    );
	    sequence++; 
	}
}

else if (sequence == 9) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; 
    }
}

else if (sequence == 10) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed /= 1.3;
		set_alarm_seconds(0, 2);
	}
}

else if (sequence == 11) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed /= 1.4;
		set_alarm_seconds(0, 1);
	}
}

else if (sequence == 12) {
	if (alarm_get(0) < 0) {
		_goldie.image_speed /= 1.5;
		set_alarm_seconds(0, 0.5);
	}
}

else if (sequence == 13) {
	_goldie.x_input = 1;	
	
	if (abs(_goldie.x - obj_player.x) < 40) {
		_goldie.x_input = 0;
		sequence++;
	}
}

else if (sequence == 14) {
	if (!_currently_talking) {
	    draw_dialogue(
	        ["Pleased to meet you, I'm Goldie!", ACTOR.GOLDIE, EMOTE.HAPPY], 
			["I run this legal firm all by myself", ACTOR.GOLDIE, EMOTE.HAPPY],
			["Lately I've been working overtime for my latest client, so...", ACTOR.GOLDIE],
			["...", ACTOR.GOLDIE]
		);
		sequence++; 
	}
}

else if (sequence == 15) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
		obj_camera.target = obj_player;
        instance_destroy(self);
    }
}


