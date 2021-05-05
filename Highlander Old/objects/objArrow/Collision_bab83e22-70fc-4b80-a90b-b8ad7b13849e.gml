/// @description: Deflect
if(deflectTime >= 0 && other.deflectTime >= 0)
{
	scr_play_snd(sndSword);
	if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
	scr_shake(3, 4, owner, x, y);
	
	speed *= 0.5;
	direction += 180 *(1 + (0.5*cos(pi*random(1))));
	deflectTime = -0.2;

	with(other)
	{
		if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
		speed *= 0.8;
		direction += 180;
		for(var i = 0; i < 15; i++)
		{
			var _dir = 90*cos(pi*random(1));
			if(abs(angle_difference(direction + _dir,other.direction)) > 45)
			{	
				direction += _dir;
				break;
			}
		}
		deflectTime = -0.2;
	}
}