enum ACTOR {
	GOLDIE,
	FERRIS
}

enum EMOTE {
	HAPPY,
	PISSED,
	NEUTRAL
}

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

scale = 2;

partial_text = "";
saying = array_shift(sayings);


var _portrait = "spr_";
switch (saying[1]) {
	case ACTOR.FERRIS:
		_portrait += "ferris_portrait_";
		break;
	case ACTOR.GOLDIE:
		_portrait += "goldie_portrait_";
		break;
	default:
		_portrait += "unknown_portrait_";
		break;
}

if (array_length(saying) > 2) {
	switch (saying[2]) {
		case EMOTE.HAPPY:
			_portrait += "happy";
			break;
		case EMOTE.PISSED:
			_portrait += "pissed";
			break;
		default:
			_portrait += "neutral";
			break;
	}
} else {
	_portrait += "neutral";	
}

portrait_sprite = asset_get_index(_portrait);

text_idx = 1;
text_speed = 2;

alarm_set(0, text_speed);

talk_sounds = [snd_talk_1, snd_talk_2, snd_talk_3, snd_talk_4, snd_talk_5];