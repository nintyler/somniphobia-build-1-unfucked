var left = keyboard_check(vk_left);
var down = keyboard_check(vk_down);
var up = keyboard_check(vk_up);
var right = keyboard_check(vk_right);
var runkey = keyboard_check(vk_lshift);
var inventory = keyboard_check_pressed(ord("C"))

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
	/*
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
	*/
	xspd = (right - left) * spd;
	yspd = (down - up) * spd;
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


if (can_move) 
{
	scr_setsprite();
	if (xspd != 0 or yspd != 0)
	{
		timer += 0.015
		if (moving == false)
		{
		    image_index = 1
			timer = 0
		}
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
else
{
   image_index = 0
   image_speed = 0
}
if inventory
{
	if !(instance_exists(obj_inventory)) && can_move
		instance_create_depth(x, y, -500, obj_inventory)
	else if !can_move
	    instance_destroy(obj_inventory)
}
