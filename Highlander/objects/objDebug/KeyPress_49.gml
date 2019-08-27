/// @description: Give Player Legendary Weapon
if(instance_exists(objPlayer)) with(objLegendary)
{
	if(instance_exists(owner) && owner.id != objPlayer.id) instance_destroy(owner);
	x = objPlayer.x;
	y = objPlayer.y;
}