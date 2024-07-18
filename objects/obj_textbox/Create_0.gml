txtb_width = 580;
txtb_height = 150;
border = 8;
line_sep = 34;
line_width = txtb_width - border * 2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_spr_w = 0;
txtb_spr_h = 0;
txtb_spd = 0.5;
character = 0;

characterspr = spr_test;
characterspr_width = sprite_get_width(characterspr);
characterspr_height = sprite_get_height(characterspr);
icondistance = 128;

dir = 0
//text
page = 0;
page_num = 0;
text[0][0] = "* A lemon bowl.";
text[0][1] = 0.5;

text_length[0] = string_length(text[0][0]);
type_text = 0;
letters = 0;
prevletters = 0;
old_type_text = 0;
text_spd = 0.8;
frame = 0;

txt_snd = snd_abc_123_txt;

setup = false;