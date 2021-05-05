/// @description: Spawn Location & Animation


//General Setup
event_inherited(); //item = bomb;
scr_singleton();

//Spawn Location
instance_create_layer(x,y,"Entities", objIndicator);


//Animation
footstep = 0;


//Water Sound
audio_play_sound(sndWaterRush,0,true);
audio_sound_gain(sndWaterRush,0,0);