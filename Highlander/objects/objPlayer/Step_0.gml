/// @description: Input, Movement & Animation

// Controller checking
var _device;
var _maxpads = gamepad_get_device_count();for (var i = 0; i < _maxpads; i++) {
    if (gamepad_is_connected(i)) {
        _device = i;
        } else _device = noone;
    }

//Input
var _hraxis = gamepad_axis_value(_device, gp_axisrh);
var _vraxis = gamepad_axis_value(_device, gp_axisrv);

dashInput = mouse_check_button_pressed(mb_right) || gamepad_button_check_pressed(_device,gp_face1);
weaponStartInput = mouse_check_button_pressed(mb_left)  || gamepad_button_check_pressed(_device,gp_shoulderrb);
weaponEndInput = mouse_check_button_released(mb_left) || gamepad_button_check_released(_device,gp_shoulderrb);
meleeAngleInput = point_direction(x,y,objCursor.x,objCursor.y); /*|| point_direction(x, y, _hraxis,_vraxis) */


//Walking
//speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D")) || keyboard_check(ord("L"))) || gamepad_button_check(0,gp_padr) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("J"))) || gamepad_button_check(0,gp_padl)hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(ord("K"))) || gamepad_button_check(0,gp_padd)vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("I"))) || gamepad_button_check(0,gp_padu)vspeed = -maxSpeed;

speed = clamp(speed,0,maxSpeed);


//Animation
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


//Player facing		
if mouse_x > x {
	facing = 1;
} else facing = -1;

if mouse_y < y {
	back = 1
} else back = -1


//Water Sound
if(objSystemManager.audioSetting != 2) with(instance_nearest(x,y,objWater)) audio_sound_gain(sndWaterRush, 0.5*(0.5*ideal_width-point_distance(x,y,other.x,other.y))/(0.5*ideal_width),0);
else audio_sound_gain(sndWaterRush, 0, 0);

//Inheritance
event_inherited();