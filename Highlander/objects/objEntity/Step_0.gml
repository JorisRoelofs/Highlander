/// @description Insert description here
#region dash
if(dashes && dashInput)
{
	dashes-=1;
	dashTime = 0;
	dashDirection = direction;
	if(speed = 0) dashDirection = point_direction(x,y,objCursor.x,objCursor.y);
}

if(dashTime >= 0)
{
	dashTime += 1/room_speed;
	
	speed = dashSpeed;
	direction = dashDirection;
	
	image_alpha = 0;
}
else image_alpha = 1;

if(dashTime >= timeTillDash) dashTime = -1;
#endregion

if item  == 0 { // sword
	
#region melee
if(meleeStartInput) meleeChargeTime = 0;
if(meleeChargeTime >= 0)
{
	meleeChargeTime += 1/room_speed;
	
	if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
	else meleeCharge = 0;
	
	if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
	{
		meleeChargeTime = -1;
		meleeId = instance_create_depth(x,y,0,objMelee);
		meleeId.charge = meleeCharge;
		meleeId.owner = id;
		meleeId.image_angle = meleeAngleInput;
	}
}
#endregion
} else if item == 1 { // bow 
	
		
	#region melee
	if(meleeStartInput) meleeChargeTime = 0;
	if(meleeChargeTime >= 0)
	{
		meleeChargeTime += 1/room_speed;
	
		if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
		else meleeCharge = 0;
	
		if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
		{
			meleeChargeTime = -1;
			meleeId = instance_create_depth(x,y,0,objMelee);
			meleeId.charge = meleeCharge;
			meleeId.owner = id;
			meleeId.image_angle = meleeAngleInput;
			
			var b;
			b = instance_create_layer(x, y, "Instances", objBullet);
			b.direction = gunDirection;
			b.image_angle = gunDirection;
			b.speed = 6;
			b.hspeed += hspeed;
			b.vspeed += vspeed;
			
		}
	}
	#endregion
	
}