/// @description: 
deathTime -= 1/room_speed;
if(deathTime <= 0) instance_destroy();

image_index = image_number * deathTime/deathTimeMax;
image_xscale = 0.1 + ((0.8*image_index) / image_number);
image_yscale = image_xscale;

/*image_xscale = abs((1 + charge) * sin(pi*deathTime/deathTimeMax));
image_yscale = image_xscale;