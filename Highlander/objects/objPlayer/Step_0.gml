/// @description Insert description here
#region movement
if(keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) vspeed = -maxSpeed;


speed = clamp(speed,0,maxSpeed);
#endregion
