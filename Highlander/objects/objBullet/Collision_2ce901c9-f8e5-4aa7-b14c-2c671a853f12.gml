/// @description: Damage
if(speed > 0 && other.id != owner && !other.invincible)
{
	speed = 0;

	if(instance_exists(owner)) owner.dashes++;
	instance_destroy(other);

	var _hit = choose(sndDamage0,sndDamage1,sndDamage2);
	scr_play_snd(_hit);
}