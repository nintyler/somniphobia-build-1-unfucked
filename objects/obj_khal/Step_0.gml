var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var up = keyboard_check(ord("W"));
var right = keyboard_check(ord("D"));
var runkey = keyboard_check(vk_lshift);

xspd = (right - left) * spd;
yspd = (down - up) * spd;

if keyboard_check_direct(runkey) {
	spd = 6;
} else {
	spd = 3;
}

//COLLISON
if place_meeting(x + xspd, y, obj_wall) {
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall) {
	yspd = 0;
}

//movement shit
if (can_move) {
	if xspd > 0 {
		sprite_index = spr_khal_right;
	} else if xspd < 0 {
		sprite_index = spr_khal_left;
	} else if yspd > 0 {
		sprite_index = spr_khal_down;
	} else if yspd < 0 {
		sprite_index = spr_khal_up;
	}
	
	if (xspd != 0 or yspd != 0) {
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = 0;
	}
	
	x += xspd;
	y += yspd;
}