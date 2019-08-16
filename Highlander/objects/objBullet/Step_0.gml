/// @description: Speed, Wiggle & Despawn
t += 1/room_speed;
speed *= 0.95;

//Afterwiggle & Deflection Prevention
if(speed <= 2)
{
	if(speed != 0) speed = 0;
	deflectTime = -1;
	image_angle = direction - (max(alarm[0],0)*sin(4*pi*t)*max(startSpeed,1)/100);
}


//Flight Wiggle, Deflection Timer & Gravity
else 
{
	deflectTime += 1/room_speed;
	image_angle = direction + (10*sin(4*pi*t)/max(startSpeed,6));
	alarm[0] = room_speed;
	direction += 20*sign(angle_difference(direction,90))/startSpeed;
}


//Despawn
if(instance_number(objBullet) > 300 && number >= smallestNumber)
{
	with(objBullet) smallestNumber++;
	instance_destroy();
	exit;
}