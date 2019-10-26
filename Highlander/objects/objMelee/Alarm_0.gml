/// @description: Charge Buff
if(charge)
{
	image_xscale = 2;
	image_yscale = image_xscale;
}

var _intensity = (5 + (10 * charge)) * (300 - point_distance(x,y,camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height)) / 300;
if(!instance_exists(objPlayer) || owner = objPlayer.id) _intensity *= 0.5;
if(_intensity > 0) scr_shake(_intensity, 2);