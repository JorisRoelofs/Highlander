/// @description: Floating & Pickup


//Float In Menu
if(room = rmMenu) {
	x = ideal_width/2-2;
	y += 0.2*sin(0.75*pi*t);
	
}
else
{


	//Invisible When Owned
	if(instance_exists(owner))
	{
		image_alpha = 0;
		speed = 0;
		x = owner.x;
		y = owner.y;
	}
	else
	{
		owner = noone;
	
		//Float
		image_alpha = 1;
		
		
		//Float To Entity If Nearby
		var _entityNear = instance_nearest(x,y,objEntity);
		speed = 4*max(64-point_distance(x,y,_entityNear.x,_entityNear.y),0)/room_speed;
		direction -= (direction - point_direction(x,y,_entityNear.x,_entityNear.y)) * 0.9;

		if(point_distance(x,y,_entityNear.x,_entityNear.y) < 12)
		{
			scr_play_snd(sndSwordPickup);
			_entityNear.item = 0;
			owner = _entityNear.id;
		}
		
		
		//Wash Ashore
		var _col = instance_place(x,y,objWater);
		if(instance_exists(_col) && _col.active)
		{
			var _dir = _col.image_angle + 90;
			move_towards_point(x + lengthdir_x(100, _dir), y + lengthdir_y(100, _dir), 1);
		}
	}
}


//Float Time
t += 1/room_speed;