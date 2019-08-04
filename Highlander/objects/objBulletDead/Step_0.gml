/// @description Insert description here

image_angle = direction + (10*sin(4*pi*t)/max(startSpeed,6));
speed *= 0.95;
if(speed <= 2)
{
	deflectTime = -1;
	image_angle = direction - (max(alarm[0],0)*sin(4*pi*t)*max(startSpeed,1)/100);

	if(speed != 0) speed = 0;
}
else 
{
	deflectTime += 1/room_speed;
	alarm[0] = room_speed;
	direction += 20*sign(angle_difference(direction,90))/startSpeed;
}

if(instance_number(objBullet) > 300 && number >= smallestNumber)
{
	with(objBullet) smallestNumber++;
	instance_destroy();
	exit;
}

t += 1/room_speed;
