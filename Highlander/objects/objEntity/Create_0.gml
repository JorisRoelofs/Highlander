/// @description: Variables


//Physics
scr_BasicCollision_init(1);


//Constants
maxSpeed = 2;
//dashSpeed = 3*maxSpeed;


//Variables
weaponCharge = 0;
meleeId = noone;
invincible = false;
item = bow;
carryingWeapon = true;
kills = 0;
weaponChargeDistance[sword] = 28;
weaponChargeDistance[bow] = 20;

//Inputs
weaponStartInput = false;
weaponEndInput = false;
meleeAngleInput = 0;
dashInput = false;


//Timers
weaponChargeTime = -1;
timeTillweaponCharge = 1;
timeTillGunCharge = 1;
dashTime = -1;
//timeTillDash = 0.5;


//Weapon Orientation
facing = 1;
back = 1;
weaponAngle = image_angle;


//Character
type = irandom(1);

if type = 0 {
	sprIdle = sprPlayerIdle;
	sprWalk = sprPlayerWalk;
	sprDashing = sprPlayerDash; 
} else if type = 1 {
	sprIdle = sprPlayer2Idle;
	sprWalk = sprPlayer2Walk;
	sprDashing = sprPlayer2Dash; 
}
