/// @description Insert description here
if(speed > 0 && other.id != owner && !other.invincible)
{
	var _hit = choose(sndDamage0,sndDamage1,sndDamage2);
	
	if (scr_in_view()) {
		if audio_is_playing(_hit) {audio_stop_sound(_hit);}
		audio_sound_pitch(_hit, 1 + random(0.2));
		audio_play_sound_at(_hit, x, y, 0, 100, 300, 1, false, 1);
	}
	
	if(instance_exists(owner)) owner.dashes++;
	instance_destroy(other);
	speed = 0;
}