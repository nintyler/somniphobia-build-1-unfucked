/// @description Insert description here
// You can write your code in this editor
box_x = camera_get_view_x(view_camera[0]);
box_y = camera_get_view_y(view_camera[0]) + 250 - (txtb_height - 150);
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(0, 0, obj_khal.x+1000, obj_khal.y+1000, 0)

draw_set_color(c_white)
draw_set_alpha(1)
draw_sprite_ext(txtb_spr, txtb_img, box_x + 32, box_y, txtb_width / txtb_spr_w, txtb_height / txtb_spr_h, 0, c_white, 1);


var _currentItem = array_get(items, selectedItem)
var _currentItemName = _currentItem[0]
var _currentItemStats = _currentItem[2]
var _currentItemDesc = _currentItem[3]
draw_set_font(fnt_default);
draw_text(box_x+36, box_y+230, _currentItemName)
draw_text(box_x+36, box_y+250, _currentItemStats)
draw_text(box_x+36, box_y+270, _currentItemDesc)

for (var i = 0; i <= (itemCount-1); i += 1)
{
	 draw_set_color(c_white)
	var xx = box_x + (itemDistance * (i + 1))
	var yy = box_y + txtb_height/2

		if !(i == selectedItem)
		{
			if !(array_contains(global.deck, items[i][0]))
				draw_sprite_ext(items[i][1], 0, xx, yy, 1, 1, image_angle, c_white, 0.5)
			else
				draw_sprite_ext(items[i][1], 0, xx, yy, 1, 1, image_angle, c_red, 0.5)
		}
		else
		{
			if !(array_contains(global.deck, items[i][0]))
			  draw_sprite_ext(items[i][1], 0, xx, yy, 1, 1, image_angle, c_white, 1)
			else
				draw_sprite_ext(items[i][1], 0, xx, yy, 1, 1, image_angle, c_red, 1)
		}	
}