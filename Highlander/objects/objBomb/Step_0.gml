/// @description: 
/// @description Insert description here
if(deathDistance <= 0) instance_destroy();
if(!instance_exists(owner) || owner.weaponEndInput) instance_destroy();
if(deathDistance > 0.2*deathDistanceMax) speed += 2*speedIncrease;
deathDistance -= speed;
image_index = image_number * (1 - (deathDistance/deathDistanceMax));