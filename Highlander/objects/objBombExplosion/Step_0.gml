/// @description: 
deathTime -= 1/room_speed;
if(deathTime <= 0) instance_destroy();

scale = 1;//0.25 + (0.75*charge);

image_index = image_number * deathTime/deathTimeMax;
image_xscale = scale * deathTime/deathTimeMax;
image_yscale = image_xscale;
/*image_xscale = abs((1 + charge) * sin(pi*deathTime/deathTimeMax));
image_yscale = image_xscale;