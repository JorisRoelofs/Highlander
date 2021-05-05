/// @description: Behavior
weaponStartInput = false;
weaponEndInput = false;

var get_target = function()
{
var _x;
_x = x;
x += 100000;
target = instance_nearest(_x, y, objEntity);
x -= 100000;

// Should we move towards the legendary object?
if(instance_exists(objLegendary.owner) && random(min(((300 - point_distance(x,y,objLegendary.owner.x,objLegendary.owner.x)) / 300), 1) > 0.5)) {
 target = objLegendary.owner;
}
}

// Get the nearest target
if (target == 0 || ! instance_exists(target))
{
get_target();
}

// Movement!
if (moveDirection == "towards") {
// Move towards the object, until being very close
move_towards_point(target . x, target . y, walkSpeed);

if (point_distance(x, y, target . x, target . y) < 50) {
 moveDirection = "away";
}
} else {
// Move away for a bit, then find a new target and move towards it
move_towards_point(target.x, target.y, -walkSpeed);

if (point_distance(x, y, target.x, target.y) > 130) {
 moveDirection = "towards";
 get_target();
}
}

// Attack!
if(point_distance(x, y, target.x, target.y) < weaponAttackDistance[item]) {
if(weaponEndTime >= 0)
{
 weaponStartTime += 1/room_speed;
 if(weaponStartTime >= 0) {
 weaponStartInput = true;//weaponChargeTime = 0;
 weaponEndTime = random(-1) - 0.5
 if(item = sword) weaponEndTime += 0.2;
 //if(item = bomb) weaponEndTime -= 0.2;
 }
}

if(weaponStartTime >= 0) {
 weaponEndTime += 1/room_speed;
 if(weaponEndTime >= 0)
 {
 weaponEndInput = true;
 weaponStartTime = random(-1);
 if(item = sword) weaponStartTime += 0.2;
 if(item = bomb) weaponStartTime += 0.5;
 }
}
else weaponEndInput = false;

meleeAngleInput = point_direction(x,y,target.x,target.y);
}


event_inherited();

//Semi-Invincible Off-Screen
if(!scr_in_view() && random(1) > 0.001) {
invincible = true;
} else {
invincible = false;
}