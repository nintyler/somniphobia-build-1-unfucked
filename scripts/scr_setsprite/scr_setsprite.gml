// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setsprite(){
	var _sprite = sprite_index
	switch state
	{
		case states.normal:
		    if xspd > 0 
			{
				_sprite = spr_khal_right;
				direction_hor = 1
			} else if xspd < 0 
			{
				_sprite = spr_khal_left;
				direction_hor = -1
			} else if yspd > 0 
			{
				_sprite = spr_khal_down;
			} else if yspd < 0 
			{
				_sprite = spr_khal_up;
			}
		break
		case states.shocked:
			if direction_hor == 1
			{
				 _sprite = spr_khal_shocked_right;
			} else if direction_hor == -1
			{
				_sprite = spr_khal_shocked_left;
			}		
		break
	}
	sprite_index = _sprite
}