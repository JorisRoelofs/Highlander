/// @description Insert description here
dashInput = mouse_check_button_pressed(mb_right);
meleeStartInput = mouse_check_button_pressed(mb_left);
meleeEndInput = mouse_check_button_released(mb_left);
meleeAngleInput = point_direction(x,y,objCursor.x,objCursor.y)

#region walk
speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) vspeed = -maxSpeed;

speed = clamp(speed,0,maxSpeed);
#endregion

event_inherited();