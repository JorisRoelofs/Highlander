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
}

if(dashTime >= timeTillDash) dashTime = -1;
#endregion

if item  == 0 { // sword
	
#region melee
if(meleeStartInput) meleeChargeTime = 0;
if(ownKnife && meleeChargeTime >= 0)
{
	meleeChargeTime += 1/room_speed;
	
	if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
	else meleeCharge = 0;
	
	if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
	{
		
		if audio_is_playing(sndSword) {audio_stop_sound(sndSword);}
		audio_play_sound_at(sndSword,x,y,0,global.falloff_ref,global.falloff_max,1,false,1);
		
		meleeChargeTime = -1;
		meleeId = instance_create_depth(x,y,0,objMelee);
		meleeId.charge = meleeCharge;
		meleeId.owner = id;
		meleeId.image_angle = meleeAngleInput;
	}
}
#endregion
} else if item == 1 { // bow 
	
		
	#region bow
	ownKnife = true;
	if(meleeStartInput) meleeChargeTime = 0;
	if(meleeChargeTime >= 0)
	{
		meleeChargeTime += 1/room_speed;
	
		if(meleeChargeTime >= timeTillGunCharge) meleeCharge = 1;
		else meleeCharge = meleeChargeTime/timeTillGunCharge;
	
		if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
		{
			meleeChargeTime = -1;
			
			if audio_is_playing(sndBow) {audio_stop_sound(sndBow);}
			audio_play_sound_at(sndBow,x,y,0,global.falloff_ref,global.falloff_max,1,false,1);
			
			var b;
			b = instance_create_layer(x, y, "Instances", objBullet);
			b.direction = gunDirection;
			b.speed = 20*meleeCharge;
//			b.hspeed += hspeed;
//			b.vspeed += vspeed;
			b.image_angle = b.direction;
			b.startSpeed = b.speed;
			b.owner = id;
			
		}
	}
	#endregion
	
}


image_xscale = facing;

if(dashTime >= 0) sprite_index = sprPlayerDash;
else if speed > 0 {
	sprite_index = sprPlayerWalk;
} else sprite_index = sprPlayerIdle;

