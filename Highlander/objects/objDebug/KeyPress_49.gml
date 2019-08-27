/// @description: Give Player Legendary Weapon
if(instance_exists(objPlayer)) with(objLegendary)
{
	if(instance_exists(owner)) instance_destroy(owner);
	x = objPlayer.x;
	y = objPlayer.y;
}