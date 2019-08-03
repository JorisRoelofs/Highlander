/// @description Insert description here


//speed = 0;

var _inst, _xx;
_xx = x;
x -= 10000;
_inst = instance_nearest(_xx, y, objEntity);
if _inst != id {
	target = _inst;
}
	
x += 10000;


switch (state) {
	case enemyState.spawn:
	
		move_towards_point(random(room_width),random(room_height),maxSpeed/2);
		
		
		
	break;
	case enemyState.idle:
					
		if irandom(1) = 1 {		
			
			if point_distance(x,y,_inst.x,_inst.y) < 256 {
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
					
				if point_distance(x,y,_inst.x,_inst.y) < 256 {
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
		if instance_exists(target) {
			
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
  
			if (point_distance(x, y, target.x, target.y) > 256)  {
				state = enemyState.idle;
			} 
			
		} else state = enemyState.idle;
	
	break;
	case enemyState.shooter:
	
		//follow target
		if instance_exists(target) {
			
			if (point_distance(x, y, target.x, target.y) < 256)  {
			
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
						
		} else state = enemyState.idle;
	
	break;
	
	case enemyState.death:
	
	break;
}

event_inherited();