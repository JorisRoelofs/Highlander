/// @description Insert description here
if(speed > 0 && other.id != owner && !other.invincible)
{
	var _hit = choose(sndDamage0,sndDamage1,sndDamage2);
	
	scr_play_snd(_hit);
	
	if(instance_exists(owner)) owner.dashes++;
	instance_destroy(other);
	speed = 0;
}