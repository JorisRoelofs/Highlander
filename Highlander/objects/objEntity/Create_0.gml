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
dashes = 3;
meleeStartInput = false;
meleeEndInput = false;
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