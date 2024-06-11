global.particle_system = part_system_create();
global.particle_system_crumbs = part_system_create();
global.storytime = false;
draw_set_font(fnt_main);

global.controls = ds_map_create();

#macro INPUT_ACTION ord("Z")
#macro INPUT_UP vk_up
#macro INPUT_DOWN vk_down