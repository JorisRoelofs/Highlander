/// @description: OBJECT UNUSED
scr_singleton();
mute = 0;

// How the sound fades out over time. Play with the numbers and see what works for your game.
global.falloff_ref = 100;
global.falloff_max = 800;
audio_falloff_set_model(audio_falloff_linear_distance);