x_input = 0;
jump_pressed = false;
jump_held = false;

max_x_spd = 3.7;
max_y_spd = 8.0;
x_accel = 0.65;
x_decel = 0.8;
grav = 0.45;
jump_spd = 8.0;

x_vel = 0.0;
y_vel = 0.0;

direction_facing = 1;

jump_sounds = [snd_jump_1, snd_jump_2, snd_jump_3];
land_sounds = [snd_land_1, snd_land_2, snd_land_3];
step_sounds = [snd_step_1, snd_step_2, snd_step_3, snd_step_4, snd_step_5, snd_step_6];

coyote_time = 0.1; // seconds
jump_buffer = 8; // pixels

extra_grav_for_jump_release = 0.65;

speaking = false;

finished_landing = true;
