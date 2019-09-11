/// @description: 
if(!other.invincible)
{
	if(instance_exists(owner)) owner.kills++;
	instance_destroy(other);
}