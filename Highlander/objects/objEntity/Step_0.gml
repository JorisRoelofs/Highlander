/// @description Insert description here

if(meleeChargeTime >= 0) speed *= 0.5;

gunDirection = angle_rotate_towards(gunDirection,meleeAngleInput,lerp(2,8,1	));
ownKnife = true;

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
	
	speed *= 1.3;
	
#region melee
if(meleeStartInput) meleeChargeTime = 0;
if(ownKnife && meleeChargeTime >= 0)
{
	meleeChargeTime += 1/room_speed;
	
	if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
	else meleeCharge = 0;
	
	if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
	{
			
		if (scr_in_view()) {
			if audio_is_playing(sndSword) {audio_stop_sound(sndSword);}
			audio_sound_pitch(sndSword, 1 + random(0.2));
			audio_play_sound(sndSword,1,false);
		}
	
		meleeChargeTime = -1;
		meleeId = instance_create_depth(x,y,0,objMelee);
		meleeId.charge = meleeCharge;
		meleeId.owner = id;
		meleeId.image_angle = gunDirection;
	}
}
#endregion
} else if item == 1 { // bow 
	
		
	#region bow
	if(meleeStartInput) meleeChargeTime = 0;
	if(meleeChargeTime >= 0)
	{
		meleeChargeTime += 1/room_speed;
	
		if(meleeChargeTime >= timeTillGunCharge) meleeCharge = 1;
		else meleeCharge = meleeChargeTime/timeTillGunCharge;
	
		if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
		{
			meleeChargeTime = -1;
			
			
			if (scr_in_view()) {
				if audio_is_playing(sndBow) {audio_stop_sound(sndBow);}
				audio_sound_pitch(sndBow, 1 + random(0.2));
				audio_play_sound(sndBow,1,false);
			}
			
			var b;
			b = instance_create_layer(x, y, "Instances", objBullet);
			b.direction = gunDirection;
			b.speed = 10*meleeCharge;
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

if(dashTime >= 0) sprite_index = sprDashing;
else if speed > 0 {
	sprite_index = sprWalk;
} else sprite_index = sprIdle;

