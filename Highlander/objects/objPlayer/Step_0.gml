/// @description Insert description here
#region movement
speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) vspeed = -maxSpeed;

speed = clamp(speed,0,maxSpeed);

if(dashes && mouse_check_button_pressed(mb_right))
{
	dashes-=1;
	dashTime = 0;
	dashDirection = direction;
}

//if(dashTime)

#endregion
#region melee
if(mouse_check_button_pressed(mb_left)) meleeChargeTime = 0;
if(meleeChargeTime >= 0)
{
	meleeChargeTime += 1/room_speed;
	
	if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
	else meleeCharge = 0;
	
	if(!instance_exists(meleeId) && (mouse_check_button_released(mb_left) || meleeCharge = 1))
	{
	meleeChargeTime = -1;
	meleeId = instance_create_depth(x,y,0,objMelee);
	meleeId.charge = meleeCharge;
	meleeId.owner = id;
	}
}
#endregion