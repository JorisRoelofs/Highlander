/// @description: Variables


//Physics
scr_BasicCollision_init(1);


//Constants
maxSpeed = 2;
dashSpeed = 3*maxSpeed;
race = 0;

//Variables
weaponCharge = 0;
meleeId = noone;
invincible = false;
item = bow;//irandom(bomb-1)+1;
carryingWeapon = true;
kills = 0;
abilityCount = 1;
weaponChargeDistance[sword] = 28;
weaponChargeDistance[bow] = 20;
weaponChargeDistance[bomb] = 35;
hp = 1;
myBomb = noone;
friction = .2;

//UI Crown & Pointer
pointerTargetX = 0.5*ideal_width;
pointerTargetY = 0.5*ideal_height;
mode = 0;
crownScale = 1;
rate = 0.0015;
name = "";

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
weaponDischargeTime = 0;


//Weapon Orientation
facing = 1;
back = 1;
weaponAngle = image_angle;

//Character
sprIdle = sprChickenIdle;
sprWalk = sprChickenWalk;
sprAbility = sprGoatDash; 


