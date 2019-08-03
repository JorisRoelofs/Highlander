/// @description Insert description here
if(instance_exists(owner))
{
	x = owner.x;
	y = owner.y;
}
else instance_destroy();

if(image_index >= 3)
{
	var _colMelee = instance_place(x,y,objMelee);
	if(instance_exists(_colMelee) && _colMelee.image_index >= 3)
	{
		instance_destroy(_colMelee);
		instance_destroy();
	}
}

if(image_index = image_number-2)
{
	with(objPlayer) if(!invincible && id != other.owner && place_meeting(x,y,other))
	{
		instance_destroy();
	}
}

if(image_index = image_number-1) instance_destroy();