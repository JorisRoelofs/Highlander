/// @description Insert description here
if(instance_exists(owner))
{
	x = owner.x;
	y = owner.y;
}
else
{
	instance_destroy();
	exit;
}

image_index = 6;

if(image_index >= 3 && image_index <= 7)
{
	with(objMelee) if(id != other.id && instance_exists(owner) && image_index >= 3 && image_index <= 7 && point_distance(x,y,other.x,other.y) < sprite_width && abs(angle_difference(image_angle,point_direction(x,y,other.x,other.y))) < 45)
	{
		owner.speed = 30;
		owner.direction = point_direction(other.owner.x,other.owner.y,owner.x,owner.y);
		owner.ownKnife = false;
		instance_create_layer(x,y,"Instances",objKnife);
		instance_destroy();
		with(other)
		{
			owner.speed = 30;
			owner.direction = other.owner.direction - 180;
			owner.ownKnife = false;
			instance_create_layer(x,y,"Instances",objKnife);
			instance_destroy();
		}
		exit;
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