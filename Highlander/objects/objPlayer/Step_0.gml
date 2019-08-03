/// @description Insert description here
#region movement
if(keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) vspeed = -maxSpeed;


speed = clamp(speed,0,maxSpeed);
#endregion
#region melee
if(mouse_check_button_pressed(mb_left)) meleeChargeTimer = 0;
if(meleeChargeTimer >= 0) meleeChargeTimer += 1/room_speed;
if(meleeChargeTimer >= timeTillMeleeCharge) meleeCharge = 0;
else meleeCharge = 1;
if(mouse_check_button_released(mb_left) || meleeCharge = 1)
{
	var _melee = instance_create(objMelee);
	_melee.charge = meleeCharge;
}
#endregion