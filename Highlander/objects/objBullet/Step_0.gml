/// @description Insert description here

image_angle = direction + (10*sin(4*pi*t)/max(startSpeed,6));
speed *= 0.9;
if(speed <= 1)
{
	image_angle = direction - ((alarm[1])*sin(4*pi*t)*max(startSpeed,1)/100);

	if(speed != 0)
	{
		speed = 0;
		alarm[0] = 2*room_speed;
		alarm[1] = alarm[0] + 0.6*room_speed;
	}
}
else 
{
	direction += 20*sign(angle_difference(direction,90))/startSpeed;
}

t += 1/room_speed;

show_debug_message(alarm[1]);