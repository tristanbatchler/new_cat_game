spr_pf = spr_portrait_frame;
spr_pf_height = sprite_get_height(spr_pf);
spr_pf_width = sprite_get_width(spr_pf);

spr_db = spr_dialogue_box;
spr_db_height = sprite_get_height(spr_db);

spr_prompt = spr_button_press;
spr_prompt_width = sprite_get_width(spr_prompt);
spr_prompt_height = sprite_get_height(spr_prompt);

ww = window_get_width();
wh = window_get_height();

portrait_sprite = spr_ferris_portrait;

scale = 2;

partial_text = "";
full_text = array_shift(texts);
text_idx = 1;
text_speed = 2;

alarm_set(0, text_speed);