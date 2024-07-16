// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setsprite(){
	var _sprite = sprite_index
    if xspd > 0 
	{
		_sprite = spr_khal_right;
	} else if xspd < 0 
	{
		_sprite = spr_khal_left;
	} else if yspd > 0 
	{
		_sprite = spr_khal_down;
	} else if yspd < 0 
	{
		_sprite = spr_khal_up;
	}
	sprite_index = _sprite
}