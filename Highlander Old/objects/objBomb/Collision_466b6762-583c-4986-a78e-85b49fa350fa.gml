/// @description: 
//scr_BasicCollision();
if(!collision)
{
	var _speedMultiplier = 0.5;
	var _hspd = hspeed;
	var _vspd = vspeed;
	
	speedIncrease = 0;
	hspeed = _speedMultiplier * other.hspeed;
	vspeed = _speedMultiplier * other.vspeed;
	collision = true;
	if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
	
	with(other)
	{
		speedIncrease = 0;
		hspeed = _speedMultiplier * _hspd;
		vspeed = _speedMultiplier * _vspd;
		collision = true;
		if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
	}
	
	repeat(100)
	{
		if(!place_meeting(x, y, other)) break;
		else
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			with(other)
			{
				x += lengthdir_x(1, direction);
				y += lengthdir_y(1, direction);
			}
		}
	}
}
/*
charge -= other.charge;
instance_destroy();