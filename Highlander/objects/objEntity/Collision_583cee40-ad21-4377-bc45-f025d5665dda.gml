/// @description: Pickup
if(!ownKnife && other.speed = 0)
{
	ownKnife = true;
	instance_destroy(other);
	var _hit = choose(sndDamage0,sndDamage1,sndDamage2);
		
	if (scr_in_view()) {
		if audio_is_playing(_hit) {audio_stop_sound(_hit);}
		audio_sound_pitch(_hit, 1 + random(0.2));
		audio_play_sound(_hit,1,false);
	}
	
}