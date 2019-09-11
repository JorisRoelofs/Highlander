/// @description: 
deathTime -= 1/room_speed;
if(deathTime <= 0) instance_destroy();

image_xscale = abs((1 + charge) * sin(2*pi*deathTime/deathTimeMax));
image_yscale = image_xscale;