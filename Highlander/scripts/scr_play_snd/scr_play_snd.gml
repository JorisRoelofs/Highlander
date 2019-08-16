/// @description plays a randomly pitch-shifted sound whose volume is based on the distance to player
/// @param sound
if(objSystemManager.audioSetting != 2)
{
	var _snd = argument[0]
	if (scr_in_view()) {
		if audio_is_playing(_snd) {audio_stop_sound(_snd);}
		audio_sound_pitch(_snd, 0.9 + random(0.4));
		if(instance_exists(objPlayer)) audio_sound_gain(_snd,clamp(0.5*(id == objPlayer.id) + 0.5*(0.5*ideal_width-point_distance(x,y,objPlayer.x,objPlayer.y))/(0.5*ideal_width),0,1),0);
		audio_play_sound(_snd,1,false);
	}
}