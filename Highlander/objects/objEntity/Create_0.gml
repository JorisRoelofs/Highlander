/// @description: Variables


//Physics
scr_BasicCollision_init(1);


//Constants
maxSpeed = 2;
//dashSpeed = 3*maxSpeed;


//Variables
meleeCharge = 0;
meleeId = noone;
invincible = false;
item = 1; // 0 = sword, 1 = bow
ownKnife = true;
dashes = 0; //TURN INTO KILLS


//Inputs
meleeStartInput = false;
meleeEndInput = false;
meleeAngleInput = 0;
dashInput = false;


//Timers
meleeChargeTime = -1;
timeTillMeleeCharge = 1;
timeTillGunCharge = 1;
dashTime = -1;
//timeTillDash = 0.5;


//Weapon Orientation
facing = 1;
back = 1;
gunDirection = image_angle;


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
