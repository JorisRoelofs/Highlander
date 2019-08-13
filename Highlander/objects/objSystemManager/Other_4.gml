/// @description Insert description here
audio_stop_sound(musicTitle);
{
	if(room = rmMenu)
	{
		if(!audio_is_playing(musicTitle)) audio_play_sound(musicTitle,1,true);
	} else if(!audio_is_playing(musicBattle)) audio_play_sound(musicBattle,1,true);
}

if(audioSetting != 0)
{
	audio_sound_gain(musicTitle,0,0);
	audio_sound_gain(musicBattle,0,0);
}
else
{
	audio_sound_gain(musicTitle,1,0);
	audio_sound_gain(musicBattle,1,0);
}