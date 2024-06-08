var _currently_talking = instance_exists(obj_dialogue);

if (sequence >= 0) {
	obj_player.x_input = 0;
	obj_player.x_vel = 0;
	obj_player.sprite_index = obj_player.idle_animation;	
}

if (sequence == -1 && instance_exists(obj_ferris) && abs(obj_player.x - obj_ferris.x) + abs(obj_player.y - obj_ferris.y) < 100) {
	audio_play_sound(snd_village_music, 0, true);
	obj_player.x_input = 0;
	obj_player.x_vel = 0;
	obj_player.sprite_index = obj_player.idle_animation;
	sequence++;
}


else if (sequence == 0) {
    // Ferris dialogue
	obj_ferris.image_xscale = sign(obj_player.x - obj_ferris.x);
	obj_camera.target = obj_ferris;
	if (!_currently_talking) {
	    draw_dialogue([
	        ["I just finished baking a fresh batch of bikkies. Would you like one?", spr_ferris_portrait_happy], 
	        ["Oh, but where are my manners?", spr_ferris_portrait_neutral],
	        ["I'm Ferris, the local baker. My shop is right across the street there.", spr_ferris_portrait_neutral]
	    ]);
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
    // Camera pans to bakery for a few seconds
    obj_camera.target = obj_bakery;

    if (abs(obj_camera.x - obj_bakery.x) + abs(obj_camera.y - obj_bakery.y) < 100 && alarm_get(0) < 0) {
        // Alarm 0 just increments sequence
        alarm_set(0, 60);
    }
}

else if (sequence == 3) {
    // Camera pans back to Ferris
    obj_camera.target = obj_ferris;

    if (abs(obj_camera.x - obj_ferris.x) + abs(obj_camera.y - obj_ferris.y) < 100 && alarm_get(0) < 0) {
        // Alarm 0 just increments sequence
        alarm_set(0, 60);
    }
}

else if (sequence == 4) {
    // Ferris dialogue
    if (!_currently_talking) {
        draw_dialogue([
            ["Pleased to meet you!", spr_ferris_portrait_happy]
        ]);
        sequence++; 
    }
}

else if (sequence == 5) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; 
    }
}

else if (sequence == 6) {
    // Goldie enters right
    instance_create_layer(obj_ferris.x + view_wview[0] + 32, obj_ferris.y, "Instances", obj_goldie);
	obj_camera.target = obj_goldie;
    obj_goldie.x_input = -1;
    sequence++;
}

else if (sequence == 7) {
    // Goldie stops in front of Ferris
    if (obj_goldie.x - obj_ferris.x < 50) {
		obj_ferris.image_xscale = 1;
        obj_goldie.x_input = 0;
		
		if (abs(obj_goldie.x_vel) <= 0) {
			sequence++;
		}
    }
}

else if (sequence == 8) {
    // Goldie dialogue
	obj_ferris.image_xscale = 1;
    if (!_currently_talking) {
        draw_dialogue([
            ["Brother may I have a bikkie?", spr_goldie_portrait_happy], 
            ["There's only one left.", spr_ferris_portrait_neutral],
            ["Oh frick.", spr_goldie_portrait_neutral]
        ]);
        sequence++; 
    }
}

else if (sequence == 9) {
    // Wait for dialogue to finish and wait a second before moving to the next sequence
    if (!_currently_talking && alarm_get(0) < 0) {
		alarm_set(0, 60);
    }
}

else if (sequence == 10) {
	// Ferris eats the last bikkie
	obj_camera.target = obj_ferris;
	obj_ferris.image_xscale = -1;
	obj_ferris.sprite_index = spr_ferris_eating;
	if (obj_ferris.image_index >= 2 && obj_ferris.image_index < 3) {
		if (part_particles_count(global.particle_system_crumbs) <= 0) {
			part_particles_burst(global.particle_system_crumbs, obj_ferris.x - 4, obj_ferris.y - obj_ferris.sprite_height + 5, ps_crumbs);	
		}
		
		var _eat_snds = [snd_eat_1, snd_eat_2, snd_eat_3];
		var _playing = false;
		for (var _i = 0; _i < array_length(_eat_snds); _i++) {
			if (audio_is_playing(_eat_snds[_i])) {
				_playing = true;
				break;
			}
		}
		if (!_playing) {
			audio_play_sound(_eat_snds[irandom(array_length(_eat_snds) - 1)], 10, false);
		}
	}
	
	if (alarm_get(0) < 0) {
		alarm_set(0, 240);
	}
}

else if (sequence == 11) {
	// Ferris finishes eating
	obj_ferris.sprite_index = obj_ferris.idle_animation;
	obj_ferris.image_xscale = 1;
	draw_dialogue([
		["Mmmm, bikkie...", spr_ferris_portrait_happy]
	]);
	sequence++;
}

else if (sequence == 12) {
	// Wait for dialogue to finish
	if (!_currently_talking) {
		sequence++;
	}
}

else if (sequence == 13) {
	// Goldie dialogue
	obj_camera.target = obj_goldie;
	draw_dialogue([
		["That's the last frickin' straw brother!", spr_goldie_portrait_pissed],
		["If you ever need legal advice, don't frickin' call me.", spr_goldie_portrait_pissed]
	]);
	sequence++;
}

else if (sequence == 14) {
	// Wait for dialogue to finish
	if (!_currently_talking) {
		sequence++;
	}
}

else if (sequence == 15) {
	// Goldie leaves
	obj_camera.target = obj_player;
	obj_goldie.x_input = 1;
	sequence++;
}

else if (sequence == 16) {
	// Wait for Goldie to leave
	if (obj_goldie.x - obj_ferris.x > view_wview[0] + 32) {
		instance_destroy(obj_goldie);
		sequence++;
	}
}

else if (sequence == 17) {
	// Ferris dialogue
	obj_camera.target = obj_ferris;
	obj_ferris.image_xscale = sign(obj_player.x - obj_ferris.x);
	draw_dialogue([
		["...", spr_ferris_portrait_neutral],
		["I need to make some more bikkies.", spr_ferris_portrait_neutral],
		["Have a nice day! I hope to see you again soon.", spr_ferris_portrait_happy]
	]);
	sequence++;
}

else if (sequence == 18) {
	// Wait for dialogue to finish
	if (!_currently_talking) {
		sequence++;
	}
}

else if (sequence == 19) {
	obj_camera.target = obj_player;
	obj_ferris.x_input = 1;
	sequence++;
}

else if (sequence == 20) {
	if (obj_ferris.x - obj_camera.x > view_wview[0] + 32) {
		// Fade out the music
		var _fadeout_seconds = 2;
		if (alarm_get(0) < 0) {
			audio_sound_gain(snd_village_music, 0, _fadeout_seconds * 1000);
			alarm_set(0, game_get_speed(gamespeed_fps) * _fadeout_seconds);
		}
	}
}

else if (sequence == 21) {
	instance_destroy(obj_ferris);
	audio_stop_sound(snd_village_music);
	sequence = -1;
}