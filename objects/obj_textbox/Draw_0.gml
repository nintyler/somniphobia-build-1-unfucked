confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);

box_x = camera_get_view_x(view_camera[0]);
box_y = camera_get_view_y(view_camera[0]) + 300;


if (setup == false) {
	setup = true;
	obj_khal.can_move = false;
	
	draw_set_font(fnt_default);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_num = array_length(text)
	
	for (var i = 0; i < page_num; i++) {
		text_length[i] = string_length(text[i][0]);
		text_x_offest[i] = 39;	
	}
}

if type_text < text_length[page]
{
	type_text += text[page][1];
	type_text = clamp(type_text, 0, text_length[page]);	
	letters = round(type_text)
	
}

if confirm_key {
	if type_text == text_length[page] {
		if page < page_num - 1 {
			page++;
			type_text = 0;
		} else {
			obj_khal.can_move = true;
			instance_destroy();
		}
	}
} else if skip_key and type_text != text_length[page] {
	type_text = text_length[page];
}


txtb_img += txtb_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

var characterx_offset = box_x + text_x_offest[page] + border;
var charactery_offset = box_y + border;
draw_sprite_ext(txtb_spr, txtb_img, box_x + text_x_offest[page], box_y, txtb_width / txtb_spr_w, txtb_height / txtb_spr_h, 0, c_white, 1);
if (character)
     draw_sprite(characterspr, 0, characterx_offset + icondistance/2,  charactery_offset + txtb_height/2 - border)
var _drawtext = string_copy(text[page][0], 1, type_text);

if !(character)
	draw_text_ext(box_x + text_x_offest[page] + border, box_y + border, _drawtext, line_sep, line_width);
else
    draw_text_ext(box_x + text_x_offest[page] + border +icondistance, box_y + border, _drawtext, line_sep, line_width-icondistance);
		
			