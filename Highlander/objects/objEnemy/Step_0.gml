/// @description Insert description here


//speed = 0;

var _inst, _xx;
_xx = x;
x -= 10000;
_inst = instance_nearest(_xx, y, objEntity);
if _inst != id {
	target = _inst;
}

//target = objPlayer;

x += 10000;

if instance_number(objEntity) < 20 {
	distance = 512;
} else if instance_number(objEntity) < 40 {
	distance = 384;
} else distance = 256;


switch (state) {
	case enemyState.spawn:
	
		move_towards_point(random(room_width),random(room_height),maxSpeed/2);
		
		
		
	break;
	case enemyState.idle:
					
		if irandom(1) = 1 {		
			
			if point_distance(x,y,_inst.x,_inst.y) < distance {
				state = enemyState.knifeHunt;
			} else state = enemyState.gunChase;
									
		} else {
			state = enemyState.gunChase;
		}
		
	break;
	case enemyState.gunChase:
	
		if objGun.owner = noone  {
	
			if check > 0 {
				check--;
			} else {
					
				if point_distance(x,y,_inst.x,_inst.y) < distance {
					state = enemyState.knifeHunt;				
				}
			
				check = 60;
			}
		
			if point_distance(x,y,objGun.x,objGun.y) > 64 {
				move_towards_point(objGun.x, objGun.y, maxSpeed);
			}
		
		} 
		else if !instance_exists(objGun.owner) {
			if point_distance(x,y,objGun.x,objGun.y) < 128 {
				move_towards_point(objGun.x, objGun.y, maxSpeed);
			}
		}
		else state = enemyState.knifeHunt;
	
	break;
	case enemyState.knifeHunt:
		
		//follow target
		if instance_exists(target) and point_distance(x,y,target.x,target.y) < distance {
			
			var _dis = point_distance(x,y,target.x,target.y)-2*sprite_width;
			
			if(target != objPlayer)
			{
				if(point_distance(x,y,target.x,target.y) < 80) randomDirectionTime *= 0.5;
				else if(point_distance(x,y,target.x,target.y) < 140) randomDirectionTime *= 0.8;
			}
			
			if(randomDirectionTime >= 0)
			{
				walkDirection = random(360);
				randomDirectionTime = random(-1) - 0.4;
			}
			else randomDirectionTime += 1/room_speed;
			var _targetX = x + lengthdir_x(_dis,walkDirection);
			var _targetY = y + lengthdir_y(_dis,walkDirection);
			
			move_towards_point(_targetX, _targetY, maxSpeed)
			if (point_distance(x, y, target.x, target.y) > 120);
			else
			{
				meleeStartTime += 1/room_speed;
				meleeEndTime += 1/room_speed;
				
				if(meleeStartTime >= 0 && meleeChargeTime = -1)
				{
					meleeStartInput = true;
					meleeStartTime += random(-1);
				}
				else meleeStartInput = false;
				
				if(meleeEndTime >= 0)
				{
					meleeEndInput = true;
					meleeEndTime += random(-1) - 0.5;
				}
				else meleeEndInput = false;
				
				meleeAngleInput = point_direction(x,y,target.x,target.y);
			
			}
 			
		} else state = enemyState.idle;
	
	break;
	case enemyState.shooter:
	
		//follow target
		if instance_exists(target) and point_distance(x,y,target.x,target.y) < distance {
			
				var _dis = point_distance(x,y,target.x,target.y)-2*sprite_width;
				var _dir = point_direction(x,y,target.x,target.y) + 90;
				var _targetX = target.x + lengthdir_x(_dis,_dir);
				var _targetY = target.y + lengthdir_y(_dis,_dir);
				if (point_distance(x, y, target.x, target.y) > 90) move_towards_point(_targetX, _targetY, maxSpeed);
				else
				{
			
					if(!irandom(10)) meleeStartInput = true;
					else meleeStartInput = false;
				
					if(!irandom(10)) meleeEndInput = true;
					else meleeEndInput = false;
				
					meleeAngleInput = point_direction(x,y,target.x,target.y);
			
				}
  
			} else state = enemyState.idle;
							
	break;
	
	case enemyState.death:
	
	break;
}

event_inherited();