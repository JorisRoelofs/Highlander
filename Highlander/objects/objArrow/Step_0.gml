/// @description: Speed, Wiggle & Despawn
t += 1/room_speed;
speed *= 0.975;//0.95;

//Afterwiggle & Deflection Prevention
if(speed <= 2)
{
	if(speed != 0)
	{
		speed = 0;
		var _intensity = 3 * (300 - point_distance(x,y,camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height)) / 300;
		if(!instance_exists(objPlayer) || owner = objPlayer.id) _intensity *= 0.5;
		if(_intensity > 0) scr_shake(_intensity, 4);
	}
	deflectTime = -1;
	image_angle = direction - (max(alarm[0],0)*sin(4*pi*t)*max(startSpeed,1)/100);
}


//Flight Wiggle, Deflection Timer & Gravity
else 
{
	deflectTime += 1/room_speed;
	image_angle = direction + (10*sin(4*pi*t)/max(startSpeed,6));
	alarm[0] = room_speed;
	direction += 4.5*sign(angle_difference(direction,90))/startSpeed; //20*
}


//Despawn
if(instance_number(objArrow) > 300 && number >= smallestNumber)
{
	//Delay destruction if in view
	if(scr_in_view() && instance_number(objArrow) < 400) {
		with(objArrow) smallestNumber += 2;
		number += 30;
	}
	else {
		with(objArrow) smallestNumber++;
		instance_destroy();
		exit;
	}
}