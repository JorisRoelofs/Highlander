/// @description: 
if(!collision && other.deflectTime >= 0)
{
	var _speedMultiplier = 0.5;
	speedIncrease = 0;
	collision = true;
	hspeed = _speedMultiplier * other.hspeed;
	vspeed = _speedMultiplier * other.vspeed;
	
	if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
	
	with(other)
	{
		scr_play_snd(sndSword);
		if(owner = objPlayer) scr_shake(5,2); //Practically invisible
	
		speed *= 0.5;
		direction += 180 * (1 + (0.5*cos(pi*random(1))));
		deflectTime = -0.2;
		
		if(instance_exists(objPlayer) && other.owner = objPlayer.id) owner = objPlayer.id;
	}
}