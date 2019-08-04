/// @description Insert description here
dashInput = mouse_check_button_pressed(mb_right);
meleeStartInput = mouse_check_button_pressed(mb_left);
meleeEndInput = mouse_check_button_released(mb_left);
meleeAngleInput = point_direction(x,y,objCursor.x,objCursor.y)


image_xscale = facing;
if speed > 0 {
	sprite_index = sprPlayerWalk;
	
	footstep += 1;
	if footstep == 15 {
		footstep = 0;
		scr_play_snd(sndFootstep);
	} 
	
} else {
	footstep = 0;
	sprite_index = sprPlayerIdle;
}
// player facing		
if mouse_x > x {
	facing = 1;
} else facing = -1;

if mouse_y < y {
	back = 1
} else back = -1

#region walk
speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D")) || keyboard_check(ord("L"))) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("J"))) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(ord("K"))) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("I"))) vspeed = -maxSpeed;

speed = clamp(speed,0,maxSpeed);
#endregion

event_inherited();