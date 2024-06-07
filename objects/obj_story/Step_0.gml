var _currently_talking = instance_exists(obj_dialogue);

if (sequence == 0) {
    // Ferris dialogue
    if (!_currently_talking) {
        draw_dialogue([
            ["I just finished baking a fresh batch of bikkies. Would you like one?", spr_ferris_portrait_happy], 
            ["Oh, but where are my manners?", spr_ferris_portrait_neutral],
            ["I'm Ferris, the local baker. My shop is right across the street there.", spr_ferris_portrait_neutral]
        ]);
        sequence++; // Move to the next sequence after initiating the dialogue
    }
} 

else if (sequence == 1) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; // Dialogue finished, move to the next sequence
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
            ["I'm always happy to meet new people. I hope you enjoy your stay in our little town", spr_ferris_portrait_happy]
        ]);
        sequence++; // Move to the next sequence after initiating the dialogue
    }
}

else if (sequence == 5) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; // Dialogue finished, move to the next sequence
    }
}

else if (sequence == 6) {
    // Goldie enters right
    var _goldie = instance_create_layer(obj_ferris.x + view_wview[0] + 32, obj_ferris.y, "Instances", obj_goldie);
	obj_camera.target = _goldie;
    _goldie.x_input = -1;
    sequence++;
}

else if (sequence == 7) {
    // Goldie stops in front of Ferris
    if (obj_goldie.x <= obj_ferris.x + 32) {
        obj_goldie.x_input = 0;
        sequence++;
    }
}

else if (sequence == 8) {
    // Goldie dialogue
    if (!_currently_talking) {
        draw_dialogue([
            ["Hello Ferris! I heard you baked some bikkies. Can I have one?", spr_goldie_portrait_happy], 
            ["There's only one left.", spr_ferris_portrait_neutral],
            ["Oh frick.", spr_goldie_portrait_neutral]
        ]);
        sequence++; // Move to the next sequence after initiating the dialogue
    }
}

else if (sequence == 9) {
    // Wait for dialogue to finish
    if (!_currently_talking) {
        sequence++; // Dialogue finished, move to the next sequence
    }
}
