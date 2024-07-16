if place_meeting(x, y, obj_khal) and obj_khal.can_move && (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) {
	var maked = instance_create_depth(0, 0,-9998, obj_textbox);
	maked.text = text;
}