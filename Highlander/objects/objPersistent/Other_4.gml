/// @description Insert description here
audio_stop_all();
{
	if(room = rmMenu) audio_play_sound(musicTitle,1,true);
	else audio_play_sound(musicBattle,1,true);
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