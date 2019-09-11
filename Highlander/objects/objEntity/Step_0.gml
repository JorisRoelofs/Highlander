/// @description: Attack & Animation


//Standalone Functions
if(weaponChargeTime >= 0) speed *= 0.5;

weaponAngle = angle_rotate_towards(weaponAngle,meleeAngleInput,8-6*(weaponChargeTime >= 0));

carryingWeapon = true; //CHECK THE IMPLICATIONS OF THIS


//Sword
if item  == sword {


	//Charging
	if(!carryingWeapon || instance_exists(meleeId)) weaponChargeTime = -1;
	else if(weaponStartInput) weaponChargeTime = 0;

	if(weaponChargeTime >= 0)
	{
		weaponChargeTime += 1/room_speed;
	
		if(weaponChargeTime >= timeTillweaponCharge) weaponCharge = 1;
		else weaponCharge = 0;
		
		
		//Release Attack
		if(weaponEndInput || weaponCharge = 1)
		{
			weaponChargeTime = -1;
			meleeId = instance_create_layer(x,y,"Instances",objMelee);
			meleeId.charge = weaponCharge;
			meleeId.owner = id;
			meleeId.image_angle = weaponAngle;
		}
	}
}


//Bow
else if item == bow {


	//Charging
	if(weaponStartInput) weaponChargeTime = 0;
	if(weaponChargeTime >= 0)
	{
		weaponChargeTime += 1/room_speed;
		weaponCharge = min(weaponChargeTime / timeTillWeaponCharge, 1);
		
		
		//Release Attack
		if(weaponEndInput || weaponCharge = 1)
		{
			weaponChargeTime = -1;
			
			scr_play_snd(sndBow);
			
			var b = instance_create_layer(x, y, "Instances", objArrow);
			b.direction = weaponAngle;
			b.speed = (10*weaponCharge)+3;
			b.image_angle = b.direction;
			b.startSpeed = b.speed;
			b.owner = id;
			
			//Charge After Effect
			var _dis = weaponChargeDistance[item];
			var _afterCharge =  instance_create_layer(x+lengthdir_x(_dis,weaponAngle),y+4+lengthdir_y(_dis,weaponAngle),"Instances",objChargeAfterEffect);
			_afterCharge.tMax = 12 + (3*weaponCharge);
		}
	}
}
else if item == bomb {


	//Charging
	if(weaponStartInput) weaponChargeTime = 0;
	if(weaponChargeTime >= 0)
	{
		weaponChargeTime += 1/room_speed;
		weaponCharge = min(weaponChargeTime / timeTillWeaponCharge, 1);
		
		
		//Release Attack
		if(weaponEndInput || weaponCharge = 1)
		{
			weaponChargeTime = -1;
			
			scr_play_snd(sndBow);
			
			var _dis = 10;
			var _dir = weaponAngle;
			var b = instance_create_layer(x + lengthdir_x(_dis, _dir), y + lengthdir_y(_dis, _dir), "Instances", objBomb);
			b.deathTime -= 2*weaponCharge;
			b.direction = weaponAngle;
			b.speed = 0;//(2*weaponCharge)+1;
			b.image_angle = b.direction;
			b.startSpeed = b.speed;
			b.owner = id;
			
			//Charge After Effect
			var _dis = weaponChargeDistance[item];
			var _afterCharge =  instance_create_layer(x+lengthdir_x(_dis,weaponAngle),y+4+lengthdir_y(_dis,weaponAngle),"Instances",objChargeAfterEffect);
			_afterCharge.tMax = 12 + (3*weaponCharge);
		}
	}
}

scrAbility();

//Animation
image_xscale = facing;

#region dash [REMOVED]
/*if(kills && dashInput)
{
	kills-=1;
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