/// @description: 
/// @description Insert description here
if(deathDistance <= 0 || !instance_exists(owner) || owner.weaponEndInput) instance_destroy();
else
{
//	if(deathDistance > 0.2*deathDistanceMax) speed += speedIncrease;
//	direction += 0.1*angle_difference(owner.weaponAngle,direction);
	var _dis = speedIncrease;
	var _dir = owner.weaponAngle + 0.5*angle_difference(owner.weaponAngle,direction);
	hspeed += lengthdir_x(_dis, _dir);
	vspeed += lengthdir_y(_dis, _dir);
	deathDistance -= deathDistanceMax/room_speed;//speed;
	charge = 1 - (deathDistance / deathDistanceMax);
	image_index = image_number * charge;
	collision = false;

}