var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var up = keyboard_check(ord("W"));
var right = keyboard_check(ord("D"));
var runkey = keyboard_check(vk_lshift);

xspd = (right - left) * spd;
yspd = (down - up) * spd;

if keyboard_check_direct(runkey)
{
	spd = 6;
} else 
{
	spd = 3;
}

//COLLISON
if place_meeting(x + xspd, y, obj_wall)
{
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall) 
{
	yspd = 0;
}

//movement shit
scr_setsprite();
if (can_move) {
	if (xspd != 0 or yspd != 0) {
		image_speed = 1 + (spd/7);
	} else {
		image_speed = 0;
		image_index = 0;
	}
	if (sprite_index != _sprite)
		image_index = 1;
	x += xspd;
	y += yspd;
}
