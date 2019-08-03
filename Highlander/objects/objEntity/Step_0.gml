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
	}
}
#endregion