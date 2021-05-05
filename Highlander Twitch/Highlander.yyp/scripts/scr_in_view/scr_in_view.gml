/// @description: checks whether the object is in view
/// @param [border distance]
/// @param [target]
function scr_in_view() {

	var _cur_x = camera_get_view_x(view_camera[0]);
	var _cur_y = camera_get_view_y(view_camera[0]);

	if(argument_count) var _dis = argument[0];
	else var _dis = 64;

	if(argument_count >= 2) var _target = argument[1];
	else var _target = id;

	with(_target)
	{
		if (x >= _cur_x - _dis) {
			if (x <= _cur_x + ideal_width + _dis) {
			    if (y >= _cur_y - _dis) {
			        if (y <= (_cur_y + ideal_height + _dis)) {
			            return true;
			        }
			    }
			}
		}
	}


	return false;


}
