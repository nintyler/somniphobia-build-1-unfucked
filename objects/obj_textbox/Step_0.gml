if prevletters != letters && string_char_at(text[page][0], type_text) != " "
{
	type_snd_num = irandom_range(1, 4)
	
	if (txt_snd == snd_abc_123_txt)
	{
		audio_play_sound(asset_get_index(("snd_type" + string(type_snd_num))), 0, 0)
		show_debug_message(type_snd_num)
	} else 
	{
		audio_play_sound(txt_snd, 10, false);
	}
}
/*
with (obj_khal)
{
	switch other.dir
	{
		case 1:
			sprite_index = spr_right
		break
		case 2:
		    sprite_index = spr_up 
		break
		case 3:
		    sprite_index = spr_left
		break
		case 4:
		    sprite_index = spr_down
		break
	}
}
*/