switch (race) {
	case 0: // chicken lays an egg, can respawn at egg
		
		if(kills && dashInput) {
			
			kills-=1;
			
			// TODO: destroy old egg
			with instance_create_layer(x,y,"Entities", objEgg) {
				owner = other.id;
			}
						
		}
			
	break;
	case 1: // rabbit hides underground
		
	   // create earth sprite
	   // make rabbit invincible
	   // start timer
	   // resurface rabbit
	   // make rabbit vunerable
		
	break;
	case 2: // pig can grow tough skin, 2 lives
	
		if(kills && dashInput) and hp < 2  {
			kills-=1;
			hp++;
			//speed decrease
		}
		
	break;
	case 3: // goat charges at you
	
		 if(kills && dashInput) {
			kills-=1;
			dashTime = 0;
			dashDirection = direction;
			if(speed = 0) dashDirection = point_direction(x,y,objCursor.x,objCursor.y);
		}

		if(dashTime >= 0) {
			dashTime += 1/room_speed;
	
			speed = dashSpeed;
			direction = dashDirection;
		}

		if (dashTime >= timeTillDash) dashTime = -1;
		
		if (dashTime >= 0) sprite_index = sprDashing;
		else if speed > 0 {
			sprite_index = sprWalk;
		} else sprite_index = sprIdle;
		
		
	break;
}
