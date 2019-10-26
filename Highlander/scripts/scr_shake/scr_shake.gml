/// @description scr_shake(intensity,duration,[owner],[x],[y],[distance])
/// @param intensity
/// @param duration
/// @param [owner]
/// @param [x]
/// @param [y]
/// @param [distance]


var _intensity = argument[0];
var _duration = argument[1];
if(argument_count >= 3) var _owner = argument[2];
else var _owner = noone;
if(argument_count >= 4)
{
	var _x = argument[3];
	var _y = argument[4];
	if(argument_count >= 6) var _distance = argument[5];
	else var _distance = 300;
	_intensity *= (_distance - point_distance(_x,_y,camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height)) / _distance;
}


if(_intensity > 0)
{
	if(!instance_exists(objPlayer) || _owner != objPlayer.id) _intensity *= 0.5;
	
	with (objDisplayManager) {
		if(!shake || intensity > _intensity)
		{
			shake = true;
			intensity = _intensity;
			alarm[1] = _duration;
		}
	}
}