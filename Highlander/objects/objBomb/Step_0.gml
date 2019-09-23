/// @description: 
/// @description Insert description here
if(deathDistance <= 0 || !instance_exists(owner) || owner.weaponEndInput) instance_destroy();
else
{
	if(deathDistance > 0.2*deathDistanceMax) speed += speedIncrease;
	deathDistance -= deathDistanceMax/room_speed;//speed;
	charge = 1 - (deathDistance / deathDistanceMax);
	image_index = image_number * charge;
	collision = false;

	direction += 0.1*angle_difference(owner.weaponAngle,direction);
}