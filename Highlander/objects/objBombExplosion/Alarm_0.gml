/// @description: 
scale = 0.9;// + (0.3*charge);
deathTime = ((0.9*charge) + 0.1) * deathTimeMax;
if(instance_exists(objPlayer) && owner = objPlayer.id) scr_shake(max(1, 5 * charge), (deathTime + 0.1) * room_speed);
else
{
	var _intensity = 2.5 * (300 - point_distance(x,y,camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height)) / 300;
	if(_intensity > 0) scr_shake(_intensity, (deathTime + 0.1) * room_speed);
}