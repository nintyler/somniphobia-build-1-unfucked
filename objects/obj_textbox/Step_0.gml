if type_text != old_type_text {
	type_snd_num = round(random(3));
	if frame == 2 {
		if txt_snd == snd_abc_123_txt {
			if type_snd_num == 0 {
				audio_play_sound(snd_type1, 10, false);
			} else if type_snd_num == 1 {
				audio_play_sound(snd_type2, 10, false);
			} else if type_snd_num == 2 {
				audio_play_sound(snd_type3, 10, false);
			} else if type_snd_num == 3 {
				audio_play_sound(snd_type4, 10, false);
			}
		} else {
			audio_play_sound(txt_snd, 10, false);
		}
		
		frame = 1;
	} else {
		frame++;
	}
}