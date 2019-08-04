/// @description Insert description here
if(deflectTime >= 0 && other.deflectTime >= 0)// && other.speed > 0)
{
	speed *= 0.8;
	direction += 180 *(1 + (0.5*cos(pi*random(1))));
	deflectTime = -0.2;

	with(other)
	{
		speed *= 0.8;
		for(var i = 0; i < 10; i++)
		{
			direction += 180 *(1 + (0.5*cos(pi*random(1))))
			if(angle_difference(direction,other.direction) > 10) break;
		}
		deflectTime = -0.2;
	}
}