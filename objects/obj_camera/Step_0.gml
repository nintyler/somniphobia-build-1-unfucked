/// @description Insert description here
// You can write your code in this editor
camera_set_view_size(view_camera[0], global.cameraW, global.cameraH);
var _x = target.x - (global.cameraW/2)
_x = clamp(_x, 0, room_width)
var _y = target.y - (global.cameraH/2)
_y = clamp(_y, 0, room_height)
camera_set_view_pos(view_camera[0], _x, _y)