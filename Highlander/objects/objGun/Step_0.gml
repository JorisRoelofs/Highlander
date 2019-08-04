/// @description Insert description here
if room = rmAction {
	
	if(instance_exists(owner))
	{
		image_alpha = 0;
		speed = 0;
		x = owner.x;
		y = owner.y;
	}
	else
	{
		image_alpha = 1;

		var _entityNear = instance_nearest(x,y,objEntity);
		speed = 4*max(64-point_distance(x,y,_entityNear.x,_entityNear.y),0)/room_speed;
		direction -= (direction - point_direction(x,y,_entityNear.x,_entityNear.y)) * 0.9;

		if(point_distance(x,y,_entityNear.x,_entityNear.y) < 12)
		{
			scr_play_snd(sndSwordPickup);
			_entityNear.item = 0;
			owner = _entityNear.id;
		}

		y += 0.5*sin(0.75*pi*t);
	}

	t += 1/room_speed;

} else {
	
	x = ideal_width/2-19;
	
	y += 0.2*sin(0.75*pi*t);
	t += 1/room_speed;
	
}