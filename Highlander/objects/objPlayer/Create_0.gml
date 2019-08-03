/// @description Insert description here
event_inherited();

#region variables
#region constants
maxSpeed = 5;
dashSpeed = 10;
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
#endregion instance_nearest()