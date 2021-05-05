/// @description: 
deathTime -= 1/room_speed;
if(deathTime <= 0) instance_destroy();

image_index = round((image_number - 1) * deathTime/deathTimeMax);
image_xscale = 0.1 + ((0.7*deathTime) / deathTimeMax);
image_yscale = image_xscale;

scr_shake(max(1, 5 * charge), 2, owner, x, y);

/*image_xscale = abs((1 + charge) * sin(pi*deathTime/deathTimeMax));
image_yscale = image_xscale;