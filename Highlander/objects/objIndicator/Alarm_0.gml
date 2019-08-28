/// @description Insert description here
if blink > 0 {
	blink--;
	alarm[0] = 4;
} else instance_destroy();

if image_alpha = 1 {
	image_alpha = 0;
} else image_alpha = 1;

