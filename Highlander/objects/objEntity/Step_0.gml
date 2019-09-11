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
			b.speed = (6.5*weaponCharge)+2.5;
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
			b.deathDistance = 100 * (weaponCharge + 1);
			b.direction = weaponAngle;
			b.speedIncrease = (0.2*weaponCharge) + 0.05;
			b.image_angle = b.direction;
			b.charge = weaponCharge;
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


// Death

if hp <= 0 {
	instance_destroy();
}

