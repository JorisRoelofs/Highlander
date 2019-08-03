/// @description Insert description here

//var _inst = instance_nearest(x,y,objEntity);  

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
	
		move_towards_point(random(room_width),random(room_height),spd/2);
		
		
		
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
	
		if check > 0 {
			check--;
		} else {
					
			if point_distance(x,y,_inst.x,_inst.y) < 128 {
				state = enemyState.knifeHunt;				
			}
			
			check = 60;
		}
		
		if point_distance(x,y,objGun.x,objGun.y) > 32 {
			move_towards_point(objGun.x, objGun.y, spd);	
		} else {
			speed = 0;
			show_debug_message("i got the gun!");
		}
	
	break;
	case enemyState.knifeHunt:
		
		//follow target
		if instance_exists(target) {
			
			move_towards_point(target.x, target.y, spd);
  
			if (point_distance(x, y, target.x, target.y) < 256)  {
					
				if (point_distance(x, y, target.x, target.y) < 32)  {
				
					show_debug_message("im close");
					if age < target.age {
						instance_destroy();	
					}

				}
				
			} else state = enemyState.idle;
			
		} else state = enemyState.idle;
	
	break;
	case enemyState.shooter:
	
	break;
	case enemyState.death:
	
	break;
}