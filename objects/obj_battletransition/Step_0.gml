/// @description Insert description here
// You can write your code in this editor
if !back
{
	spd += spdaccel
	alpha = spd/20
	if global.cameraH > 0 && global.cameraW > 0
	{
		global.cameraH -= spd/1.3333
		global.cameraW -= spd
	}
	if spd > 22
	{
	   back = 1
	   global.cameraH = 0
		global.cameraW = 0
	}
}
else
{
	if spd > 0
	{
		spd -= spdaccel
		alpha = spd/20
		if global.cameraW < 640 && global.cameraH < 480
		{
			global.cameraH += spd/1.3333
			global.cameraW += spd
		}
	}
	else
	{
		global.cameraW = 640
		global.cameraH = 480
		instance_destroy()
	}
}

