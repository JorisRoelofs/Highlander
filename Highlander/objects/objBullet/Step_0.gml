/// @description Insert description here

image_angle = direction + (30*sin(4*pi*t)/max(speed,6));
speed *= 0.9;
if(speed <= 0.8)
{
	speed = 0;
	image_angle = direction + ((alarm[0])*sin(4*pi*t)*max(startSpeed,1)/100);
}
t += 1/room_speed;