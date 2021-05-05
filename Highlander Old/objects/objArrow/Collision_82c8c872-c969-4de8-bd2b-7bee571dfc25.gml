/// @description: REMOVED
/*if(deflectTime >= 0)
{
	scr_play_snd(sndSword);
	if(owner = objPlayer) scr_shake(5,2); //Practically invisible
	
	speed *= 0.5;
	direction += 180 *(1 + (0.5*cos(pi*random(1))));
	deflectTime = -0.2;
}