/// @description Insert description here
// You can write your code in this editor
//draw_set_font(DebugFont)
if instance_exists(obj_textbox)
{
	draw_text(0, 0, obj_textbox.text_length[obj_textbox.page])
	draw_text(0, 50, obj_textbox.type_text)
}