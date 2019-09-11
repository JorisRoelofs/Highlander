/// @description: 
deathTime -= 1/room_speed;
if(deathTime <= 0) instance_destroy();

image_xscale = 1 + charge;
image_yscale = image_xscale;