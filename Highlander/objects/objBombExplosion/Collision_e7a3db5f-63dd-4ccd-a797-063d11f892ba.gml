/// @description: 
if(!other.invincible)
{
	if(instance_exists(owner)) owner.kills++ owner.abilityCount++;
	instance_destroy(other);
}