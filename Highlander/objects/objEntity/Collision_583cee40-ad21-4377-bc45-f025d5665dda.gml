if(!ownKnife && other.speed = 0)
{
	ownKnife = true;
	instance_destroy(other);
	
	if audio_is_playing(sndHit) {audio_stop_sound(sndHit);}
	audio_play_sound_at(sndHit,x,y,0,global.falloff_ref,global.falloff_max,1,false,1);
	
}