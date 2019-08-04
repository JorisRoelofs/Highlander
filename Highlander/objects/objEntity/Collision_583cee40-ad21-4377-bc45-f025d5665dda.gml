if(!ownKnife && other.speed = 0)
{
	ownKnife = true;
	instance_destroy(other);
	var _hit = choose(sndDamage0,sndDamage1,sndDamage2);
	
	if audio_is_playing(_hit) {audio_stop_sound(_hit);}
	audio_play_sound_at(_hit,x,y,0,global.falloff_ref,global.falloff_max,1,false,1);
	
}