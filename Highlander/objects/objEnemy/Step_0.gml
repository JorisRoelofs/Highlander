/// @description: Behavior


//Reset Variables
invincible = false;
speed = 0;
weaponStartInput = false;
weaponEndInput = false;

if(instance_number(objEntity) < 20) distance = 512;
else if(instance_number(objEntity) < 40) distance = 384;
else distance = 256;


//Choose Target
var _inst, _xx;
_xx = x;
x -= 100000;
_inst = instance_nearest(_xx, y, objEntity);
x += 100000;

if(newTargetTime >= 0 || !instance_exists(target))
{
	newTargetTime = -random(1);
	if(_inst != id) target = _inst;
	
	
	//If the legendary weapon is nearby, make it the target instead
	if(instance_exists(objLegendary.owner) && random(min(((300 - point_distance(x,y,objLegendary.owner.x,objLegendary.owner.x)) / 300), 1) > 0.5)) target = objLegendary.owner;
}

if(!instance_exists(target)) target = noone;
else newTargetTime += (clamp(((point_distance(x,y,target.x,target.y) - 300) / 300), 0, 1) + (target != _inst))/room_speed; //Speed up choosing a new target the further away the current target is and if someone else is closer
newTargetTime += 1/room_speed;


//Follow Target
if(instance_exists(target))
{
	var _dis = point_distance(x,y,target.x,target.y)-sprite_width;
	var _dir = point_direction(x,y,target.x,target.y);
}

if(instance_exists(target) && _dis < distance) {


	//Change Direction
	if(randomDirectionTime >= 0) {
		walkDirection = random(360);
		randomDirectionTime = random(-1) - 0.4;
				
		if(item = sword) walkDirection = 0.5*(walkDirection + _dir);
		
		walkDirection += angle_difference(point_direction(x,y,objLegendary.x,objLegendary.y),walkDirection) * min(point_distance(x,y,objLegendary.x,objLegendary.y) < 300,1) * (0.3 + (0.7*(!instance_exists(objLegendary.owner))));
		
	}
	else randomDirectionTime += 1/room_speed;
			
	var _waterNear = instance_nearest(x,y,objWater);
	walkDirection += angle_difference(point_direction(_waterNear.x,_waterNear.y,x,y),walkDirection) * clamp((120 - point_distance(x,y,_waterNear.x,_waterNear.y))/120,0,1);
	
	/*//Change Direction Faster When Target Is Far Away
	if(target != objPlayer) {
		if(_dis < 100) randomDirectionTime *= 0.5;
		else if(_dis < 160) randomDirectionTime *= 0.8;
	}*/


	//Set Location
	var _targetX = x + lengthdir_x(_dis,walkDirection);
	var _targetY = y + lengthdir_y(_dis,walkDirection);
	move_towards_point(_targetX, _targetY, maxSpeed);


	//Attack Timing
	if(point_distance(x, y, target.x, target.y) < weaponAttackDistance[item])	{
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
}


//Move Towards Player
else if(instance_exists(objPlayer)) move_towards_point(objPlayer.x, objPlayer.y, maxSpeed);


//Move Towards Weapon
else if(instance_exists(objLegendary) && ((instance_exists(objLegendary.owner) && objLegendary.owner.id != id)/* || !instance_exists(objLegendary.owner)*/)) move_towards_point(objLegendary.x, objLegendary.y, maxSpeed);


//Move Towards Target Anyways
else if(instance_exists(target)) move_towards_point(target.x, target.y, maxSpeed);


//DEBUGGING
//speed = 0
//weaponChargeTime = -1;


//Inheritance
event_inherited();


//Semi-Invincible Off-Screen
if(!scr_in_view() && random(1) > 0.001) invincible = true;