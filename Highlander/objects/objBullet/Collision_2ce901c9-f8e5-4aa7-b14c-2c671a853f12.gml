/// @description Insert description here
if(speed > 0 && other.id != owner)
{
	if(instance_exists(owner)) owner.dashes++;
	instance_destroy(other);
	speed = 0;
}