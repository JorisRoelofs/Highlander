/// @description: Attack & Animation


//Standalone Functions
if(meleeChargeTime >= 0) speed *= 0.5;

gunDirection = angle_rotate_towards(gunDirection,meleeAngleInput,8-6*(meleeChargeTime >= 0));

ownKnife = true; //CHECK THE IMPLICATIONS OF THIS


//Sword
if item  == 0 {


	//Charging
	if(meleeStartInput) meleeChargeTime = 0;
	if(!ownKnife) meleeChargeTime = -1;
	if(meleeChargeTime >= 0)
	{
		meleeChargeTime += 1/room_speed;
	
		if(meleeChargeTime >= timeTillMeleeCharge) meleeCharge = 1;
		else meleeCharge = 0;
		
		
		//Release Attack
		if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
		{
			meleeChargeTime = -1;
			meleeId = instance_create_layer(x,y,"Instances",objMelee);
			meleeId.charge = meleeCharge;
			meleeId.owner = id;
			meleeId.image_angle = gunDirection;
		}
	}
}


//Bow
else if item == 1 {


	//Charging
	if(meleeStartInput) meleeChargeTime = 0;
	if(meleeChargeTime >= 0)
	{
		meleeChargeTime += 1/room_speed;
		meleeCharge = min(meleeChargeTime / timeTillGunCharge, 1);
		
		
		//Release Attack
		if(!instance_exists(meleeId) && (meleeEndInput || meleeCharge = 1))
		{
			meleeChargeTime = -1;
			
			scr_play_snd(sndBow);
			
			var b = instance_create_layer(x, y, "Instances", objBullet);
			b.direction = gunDirection;
			b.speed = 10*meleeCharge;
			b.image_angle = b.direction;
			b.startSpeed = b.speed;
			b.owner = id;
			
			
			//Charge After Effect
			var _dis = 20 + 10*!item;
			var _afterCharge =  instance_create_layer(x+lengthdir_x(_dis,gunDirection),y+4+lengthdir_y(_dis,gunDirection),"Instances",objChargeAfterEffect);
			_afterCharge.maxT = 15*meleeCharge;
		}
	}
}


//Animation
image_xscale = facing;

if(dashTime >= 0) sprite_index = sprDashing;
else if speed > 0 {
	sprite_index = sprWalk;
} else sprite_index = sprIdle;


#region dash [REMOVED]
/*if(dashes && dashInput)
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
*/#endregion

