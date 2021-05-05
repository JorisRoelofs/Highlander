/// @description Insert description here
var _cur_y = camera_get_view_y(view_camera[0]) - 64;
var _cur_x = camera_get_view_x(view_camera[0]);

y = _cur_y;
x = random_range(_cur_x,ideal_width);

createdMeteor = false;
friction = .01;
vspeed = 2;