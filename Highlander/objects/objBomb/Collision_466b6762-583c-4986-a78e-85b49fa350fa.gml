/// @description: 
//scr_BasicCollision();
if(!collision)
{
	direction = point_direction(other.x,other.y,x,y);
	x += hspeed;
	y += vspeed;
	collision = true;
	with(other)
	{
		direction = other.direction + 180;
		x += hspeed;
		y += vspeed;
		collision = true;
	}
}
/*
charge -= other.charge;
instance_destroy();