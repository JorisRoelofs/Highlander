/// @description: Variables


//Physics
scr_BasicCollision_init(1);


//Constants
maxSpeed = 2;
dashSpeed = 3*maxSpeed;


//Variables
weaponCharge = 0;
meleeId = noone;
invincible = false;
item = bow;
carryingWeapon = true;
kills = 0;
weaponChargeDistance[sword] = 28;
weaponChargeDistance[bow] = 20;
weaponChargeDistance[bomb] = 35;


// Temp frictions setup
if room = rmIsland {
	friction = .1;
} else if room = rmIce {
	friction = -.2;
}

//Inputs
weaponStartInput = false;
weaponEndInput = false;
meleeAngleInput = 0;
dashInput = false;


//Timers
weaponChargeTime = -1;
timeTillweaponCharge = 1;
timeTillWeaponCharge = 1;
dashTime = -1;
timeTillDash = 0.5;


//Weapon Orientation
facing = 1;
back = 1;
weaponAngle = image_angle;


//Character
race = irandom(2);

if race = 0 { // chicken
	sprIdle = sprPlayerIdle;
	sprWalk = sprPlayerWalk;
	sprDashing = sprPlayerDash; 
} else if race = 1 { // rabbit
	sprIdle = sprPlayer2Idle;
	sprWalk = sprPlayer2Walk;
	sprDashing = sprPlayer2Dash; 
}  else if race = 2 { // pig
	sprIdle = sprPlayer3Idle;
	sprWalk = sprPlayer3Walk;
	sprDashing = sprPlayer2Dash; 
}

