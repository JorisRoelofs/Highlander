/// @description Insert description here
if(deflectTime >= 0 && other.deflectTime >= 0)// && other.speed > 0)
{
	speed *= 0.8;
	direction += 180 *(1 + (0.5*cos(pi*random(1))));
	deflectTime = -0.2;
	
	if owner = objPlayer {
		scr_shake(5,2);
	}

	with(other)
	{
		speed *= 0.8;
		direction += 180;
		for(var i = 0; i < 15; i++)
		{
			var _dir = 90*cos(pi*random(1));;
			if(abs(angle_difference(direction + _dir,other.direction)) > 45)
			{	
				direction += _dir;
				break;
			}
		}
		deflectTime = -0.2;
	}
}