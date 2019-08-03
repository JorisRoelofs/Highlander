/// @description Insert description here
dashInput = mouse_check_button_pressed(mb_right);
meleeStartInput = mouse_check_button_pressed(mb_left);
meleeEndInput = mouse_check_button_released(mb_left);


#region movement
#region walk
speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) vspeed = -maxSpeed;

speed = clamp(speed,0,maxSpeed);
#endregion
#region dash
if(dashes && dashInput)
{
	dashes-=1;
	dashTime = 0;
	dashDirection = direction;
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