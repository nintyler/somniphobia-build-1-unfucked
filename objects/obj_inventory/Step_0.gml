/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_left)
    selectedItem = (selectedItem = 0 ? (itemCount - 1) : selectedItem - 1)
if keyboard_check_pressed(vk_right)
    selectedItem = (selectedItem = (itemCount - 1) ? 0 : selectedItem + 1)
	
obj_khal.can_move = false;