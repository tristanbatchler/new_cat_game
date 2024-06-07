x_input = real(keyboard_check(vk_right)) - real(keyboard_check(vk_left));
var _jump_key = ord("Z");
jump_pressed = keyboard_check_pressed(_jump_key);
jump_held = keyboard_check(_jump_key);

if (distance_to_object(obj_ferris) < 50 && !spoken) {
	draw_dialogue(spr_ferris_portrait_neutral, [
		["I just baked a fresh batch of my signature bikkies!", spr_ferris_portrait_happy],
		["Wanna try some?", spr_ferris_portrait_happy],
		["Oh, but where are my manners?", spr_ferris_portrait_neutral],
		["My name is Ferris, I run the bakery over there.", spr_ferris_portrait_neutral],
		["Pleased to meet you!", spr_ferris_portrait_happy],
		["Brother may I please have some bikkies?", spr_goldie_portrait_neutral],
		["There is only one left.", spr_ferris_portrait_neutral],
		["Oh frick...", spr_goldie_portrait_neutral],
		["*Monch*", spr_ferris_portrait_happy],
		["That's the last fricken' straw!", spr_goldie_portrait_pissed],
		["*Bonk*", spr_goldie_portrait_pissed],
		["Owch...", spr_ferris_portrait_pissed], 
		["...", spr_goldie_portrait_happy]
	]);	
	spoken = true;
}

event_inherited();
