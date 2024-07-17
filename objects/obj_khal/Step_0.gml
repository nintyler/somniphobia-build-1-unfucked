var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var up = keyboard_check(ord("W"));
var right = keyboard_check(ord("D"));
var runkey = keyboard_check(vk_lshift);

var _walkSpeed = 3;
var _sprintSpeed = 5

var _goingDiagonally = 0

if (left || right) && (up || down)
     _goingDiagonally = 1

if keyboard_check_direct(runkey)
{
	spd = _sprintSpeed;
} 
else 
{
	spd = _walkSpeed;
}

show_debug_message(string(xspd) + " " + string(yspd))

if !_goingDiagonally
{
	xspd = (right - left) * spd;
	yspd = (down - up) * spd;
}
else
{
	var _angleHor = (right - left) 
	var _angleVer = (down - up)
	if _angleHor && _angleVer
	{
		xspd = lengthdir_x(spd, 315)
		yspd = lengthdir_y(spd, 315)
	}
	if !_angleHor && _angleVer
	{
		xspd = lengthdir_x(spd, 225)
		yspd = lengthdir_y(spd, 225)
	}
	if _angleHor && !_angleVer
	{
		xspd = lengthdir_x(spd, 45)
		yspd = lengthdir_y(spd, 45)
	}
	if !_angleHor && !_angleVer
	{
		xspd = lengthdir_x(spd, 135)
		yspd = lengthdir_y(spd, 135)
	}
	
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
	if (xspd != 0 or yspd != 0)
	{
		if (moving == false)
		    image_index = 1
		image_speed = 0.8 + (spd/4);
		moving = true;
	} else
	{
		image_speed = 0;
		image_index = 0;
		moving = false;
	}
	if (sprite_index != _sprite)
		image_index = 1;
	x += xspd;
	y += yspd;
}
