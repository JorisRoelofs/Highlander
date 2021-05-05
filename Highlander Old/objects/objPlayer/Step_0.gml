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

leftInput = objCursor.leftInput;
rightInput = objCursor.rightInput;
upInput = objCursor.upInput;
downInput = objCursor.downInput;


//Walking
speed = 0;

if(leftInput) hspeed -= maxSpeed;
if(rightInput) hspeed += maxSpeed;
if(upInput) vspeed -= maxSpeed;
if(downInput) vspeed += maxSpeed;

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