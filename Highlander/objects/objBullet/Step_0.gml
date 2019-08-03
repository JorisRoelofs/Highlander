/// @description Insert description here

image_angle = direction + (30*sin(4*pi*t)/max(speed,6));
speed *= 0.9;
if(speed <= 1)
{
	speed = 0;
	image_angle = direction - ((alarm[0])*sin(4*pi*t)*max(startSpeed,1)/100);
}
else direction += 20*sign(angle_difference(direction,90))/startSpeed;
t += 1/room_speed;