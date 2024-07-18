/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_left)
    selectedItem = (selectedItem = 0 ? (itemCount - 1) : selectedItem - 1)
if keyboard_check_pressed(vk_right)
    selectedItem = (selectedItem = (itemCount - 1) ? 0 : selectedItem + 1)
	
obj_khal.can_move = false;

if keyboard_check_pressed(ord("Z"))
{
	var _currentItem = array_get(items, selectedItem)
	var _currentItemName = _currentItem[0]
	if !(array_contains(global.deck, _currentItemName))	
	{
	    if array_length(global.deck) <= 3
			array_push(global.deck, _currentItemName)
	}
	else
	    array_delete(global.deck, array_get_index(global.deck, _currentItemName), 1)
	
}
show_debug_message(global.deck)