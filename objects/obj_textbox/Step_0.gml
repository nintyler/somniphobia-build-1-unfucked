if type_text != old_type_text 
{
	type_snd_num = irandom_range(1, 4)
	if (frame == 2)
	{
		if (txt_snd == snd_abc_123_txt)
		{
			audio_play_sound(asset_get_index(("snd_type" + string(type_snd_num))), 0, 0)
			show_debug_message(type_snd_num)
		} else 
		{
			audio_play_sound(txt_snd, 10, false);
		}
		
		frame = 1;
	} else 
	{
		frame++;
	}
}