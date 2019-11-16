/// @description: Input, Movement & Animation

// Controller checking

//Input
device = objCursor.device;
lhaxis = objCursor.lhaxis;
lvaxis = objCursor.lvaxis;
rhaxis = objCursor.rhaxis;
rvaxis = objCursor.rvaxis;

dashInput = objCursor.dashInput;
weaponStartInput = objCursor.weaponStartInput;
weaponEndInput = objCursor.weaponEndInput;
meleeAngleInput = objCursor.meleeAngleInput;


//Walking
//speed = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D")) || keyboard_check(ord("L"))) || gamepad_button_check(0,gp_padr) hspeed = maxSpeed;
if(keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("J"))) || gamepad_button_check(0,gp_padl) hspeed = -maxSpeed;
if(keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(ord("K"))) || gamepad_button_check(0,gp_padd) vspeed = maxSpeed;
if(keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("I"))) || gamepad_button_check(0,gp_padu) vspeed = -maxSpeed;

if(point_distance(0,0,lhaxis,lvaxis) > 0.2)
{
	hspeed = maxSpeed * lhaxis;
	vspeed = maxSpeed * lvaxis;
}

speed = clamp(speed,0,maxSpeed);


//Animation
image_xscale = facing;
if speed > 0 {
	sprite_index = sprWalk;
	
	footstep += 1;
	if footstep == 15 {
		footstep = 0;
		scr_play_snd(sndFootstep);
	} 
	
} else {
	footstep = 0;
	sprite_index = sprIdle;
}


//Player facing		
if objCursor.x > x {
	facing = 1;
} else facing = -1;

if objCursor.y < y {
	back = 1
} else back = -1


//Water Sound
if(objSystemManager.audioSetting != 2) with(instance_nearest(x,y,objWater)) audio_sound_gain(sndWaterRush, 0.5*(0.5*ideal_width-point_distance(x,y,other.x,other.y))/(0.5*ideal_width),0);
else audio_sound_gain(sndWaterRush, 0, 0);

//Inheritance
event_inherited();