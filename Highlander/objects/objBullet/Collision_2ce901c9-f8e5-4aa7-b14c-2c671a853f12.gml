/// @description Insert description here
if(speed > 0 && other.id != owner)
{
	instance_destroy(other)
	speed = 0;
}