/// @description: 
//instance_destroy();
if(other.speed <= 0.2)
{
	var _dis = 0.2;
	var _dir = point_direction(other.x,other.y,x,y);
	hspeed += lengthdir_x(_dis, _dir);
	vspeed += lengthdir_y(_dis, _dir);
}