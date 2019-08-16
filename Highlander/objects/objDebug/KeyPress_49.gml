/// @description: Give Player Legendary Weapon


with(objGun)
{
	if(instance_exists(owner)) owner.item = 1;
	owner = noone;
	x = objPlayer.x;
	y = objPlayer.y;
}