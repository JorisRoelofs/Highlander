/// @description: Attack & Animation

scrAbility();

//Standalone Functions
if(weaponChargeTime >= 0 || instance_exists(myBomb)) speed *= 0.5;

weaponAngleChange = 8;
if(weaponChargeTime >= 0) weaponAngleChange = 2;
if(instance_exists(myBomb)) weaponAngleChange = 4;

weaponAngle = angle_rotate_towards(weaponAngle,meleeAngleInput,weaponAngleChange);

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
			meleeId = instance_create_layer(x,y,"Entities",objMelee);
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
			
			var b = instance_create_layer(x, y, "Entities", objArrow);
			b.direction = weaponAngle;
			b.speed = (6.5*weaponCharge)+2.5;
			b.image_angle = b.direction;
			b.startSpeed = b.speed;
			b.owner = id;
			
			
			
			//Screen Shake
			scr_shake(2, 4, id, x, y);

			
			//Charge After Effect
			var _dis = weaponChargeDistance[item];
			var _afterCharge =  instance_create_layer(x+lengthdir_x(_dis,weaponAngle),y+4+lengthdir_y(_dis,weaponAngle),"Entities",objChargeAfterEffect);
			_afterCharge.tMax = 12 + (3*weaponCharge);
		}
	}
}


//Bomb
else if item == bomb {


	//Charging
	weaponDischargeTime -= 1/room_speed;
	if(weaponStartInput && weaponDischargeTime < 0) weaponChargeTime = 0;
	if(weaponChargeTime >= 0)
	{
		weaponChargeTime += 1/room_speed;
		weaponCharge = min(weaponChargeTime / timeTillWeaponCharge, 1);
		
		
		//Release Attack
		if(weaponChargeTime >= 0)//weaponEndInput || weaponCharge = 1)
		{
			weaponChargeTime = -1;
			weaponDischargeTime = 0;//(0.5 * (1 - weaponCharge)) + 0.2;
			
			scr_play_snd(sndBow);
			
			var _dis = weaponChargeDistance[item];
			var _dir = weaponAngle;
			myBomb = instance_create_layer(x + lengthdir_x(_dis, _dir), y + 3 + lengthdir_y(_dis, _dir), "Entities", objBomb);
			myBomb.direction = weaponAngle;
			myBomb.owner = id;
			
			//Charge After Effect
			var _dis = weaponChargeDistance[item];
			var _afterCharge =  instance_create_layer(x+lengthdir_x(_dis,weaponAngle),y+4+lengthdir_y(_dis,weaponAngle),"Entities",objChargeAfterEffect);
			_afterCharge.tMax = 12 + (3*weaponCharge);
		}
	}
}



//Animation
image_xscale = facing;


// Death

if hp <= 0 {
	instance_destroy();
}

