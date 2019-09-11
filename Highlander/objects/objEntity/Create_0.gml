/// @description: Variables


//Physics
scr_BasicCollision_init(1);


//Constants
maxSpeed = 2;
dashSpeed = 3*maxSpeed;
race = irandom(3);

//Variables
weaponCharge = 0;
meleeId = noone;
invincible = false;
item = bow;
carryingWeapon = true;
kills = 1;
weaponChargeDistance[sword] = 28;
weaponChargeDistance[bow] = 20;
weaponChargeDistance[bomb] = 35;
hp = 1;

// Temp frictions setup
if room = rmIsland {
	friction = .2;
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


switch (race) {
    case 0:
        sprIdle = sprChickenIdle;
		sprWalk = sprChickenWalk;
    break;
    case 1:
        sprIdle = sprBunnyIdle;
		sprWalk = sprBunnyWalk;
    break;
	case 2:
        sprIdle = sprPigIdle;
		sprWalk = sprPigWalk;
    break;
	case 3:
        sprIdle = sprGoatIdle;
		sprWalk = sprGoatWalk;
		sprDashing = sprGoatDash; 
    break;
}

