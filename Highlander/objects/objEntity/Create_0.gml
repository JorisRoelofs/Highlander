/// @description Insert description here
scr_BasicCollision_init(1);

#region variables
#region constants
maxSpeed = 2;
dashSpeed = 6*maxSpeed;
#endregion
#region temps
meleeCharge = 0;
meleeId = noone;
invincible = false;
item = 0; // 0 = sword, 1 = bow
dashes = 1;
meleeStartInput = false;
meleeEndInput = false;
meleeAngleInput = 0;
dashInput = false;
ownKnife = true;
// gun orientation
facing = 1;
back = 1;
gunDirection = image_angle;
timeTillGunCharge = 1;

#endregion
#endregion
#region timers
meleeChargeTime = -1;
timeTillMeleeCharge = 1;
dashTime = -1;
timeTillDash = 0.1;
#endregion

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
