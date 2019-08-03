/// @description Insert description here
var _entityNear = instance_nearest(x,y,objEntity);
speed = 4*max(64-point_distance(x,y,_entityNear.x,_entityNear.y),0)/room_speed;
direction -= (direction - point_direction(x,y,_entityNear.x,_entityNear.y)) * 0.9;

if(point_distance(x,y,_entityNear.x,_entityNear.y) < 12)
{
	_entityNear.item = 1;
	owner = _entityNear.id;
}

y += 0.5*sin(0.75*pi*t);

if(instance_exists(owner))
{
	image_alpha = 0;
	speed = 0;
	x = owner.x;
	y = owner.y;
}
else image_alpha = 1;

t += 1/room_speed;