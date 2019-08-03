/// @description Insert description here
if(instance_exists(owner))
{
	x = owner.x;
	y = owner.y;
}
else instance_destroy();

if(image_index >= 3 && image_index <= 7)
{
	var _colMelee = instance_place(x,y,objMelee);
	if(instance_exists(_colMelee) && _colMelee.image_index >= 3 && image_index <= 7)
	{
		instance_destroy(_colMelee);
		instance_destroy();
	}
}

if(image_index = image_number-5)
{
	with(objEntity) if(!invincible && id != other.owner && point_distance(x,y,other.x,other.y) < 0.5*(sprite_width + other.sprite_width) && abs(angle_difference(other.image_angle,point_direction(other.x,other.y,x,y))) < 45)
	{
		instance_destroy();
	}
}

if(image_index = image_number-1) instance_destroy();