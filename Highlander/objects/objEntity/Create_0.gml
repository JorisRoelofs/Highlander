/// @description Insert description here
scr_BasicCollision_init(1);

#region variables
#region constants
maxSpeed = 5;
dashSpeed = 30;
#endregion
#region temps
meleeCharge = 0;
meleeId = noone;
invincible = false;
dashes = 3;
#endregion
#endregion
#region timers
meleeChargeTime = -1;
timeTillMeleeCharge = 1;
dashTime = -1;
timeTillDash = 0.1;
#endregion