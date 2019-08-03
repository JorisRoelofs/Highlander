/// @description Insert description here

image_angle = direction + (30*sin(4*pi*t)/max(speed,6));
speed *= 0.9;
if(speed <= 1 && speed != 0)
{
	speed = 0;
	alarm[0] = 0.5;
	alarm[1] = 3*alarm[0];
}
else
{
	image_angle = direction - ((alarm[0])*sin(4*pi*t)*max(startSpeed,1)/100);
	direction += 20*sign(angle_difference(direction,90))/startSpeed;
}
t += 1/room_speed;