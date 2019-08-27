/// @description: Spawn Location & Animation


//General Setup
event_inherited();
scr_singleton();


//Spawn Location
var _dis = 200;
x = random_range(_dis,room_width-_dis);
y = random_range(_dis,room_height-_dis);


//UI Pointer
pointerTargetX = 0.5*ideal_width;
pointerTargetY = 0.5*ideal_height;

mode = 0;
crownScale = 1;
rate = 0.0015;


//Animation
footstep = 0;


//Water Sound
audio_play_sound(sndWaterRush,0,true);
audio_sound_gain(sndWaterRush,0,0);