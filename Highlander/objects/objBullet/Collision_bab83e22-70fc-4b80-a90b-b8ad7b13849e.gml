/// @description: Deflect
if(deflectTime >= 0 && other.deflectTime >= 0)
{
	scr_play_snd(sndSword);
	if(owner = objPlayer) scr_shake(5,2); //Practically invisible
	
	speed *= 0.8;
	direction += 180 *(1 + (0.5*cos(pi*random(1))));
	deflectTime = -0.2;

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