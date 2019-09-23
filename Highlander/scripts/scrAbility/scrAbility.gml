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
	   
	    if(kills && dashInput) {
			kills-=1;
			dashTime = 0;
			speed = 0;
			invincible = true;
		}

		if(dashTime >= 0) {
			dashTime += 1/room_speed;
		}

		if (dashTime >= 2) {
			dashTime = -1;
			invincible = false;
		}
		
		if (dashTime >= 0) sprite_index = sprAbility;
		
		
	break;
	case 2: // pig can grow tough skin, 2 lives
	
		if hp < 2 {
		
			if(kills && dashInput) {
				kills-=1;
				dashTime = 0;
			}

			if(dashTime >= 0) {
				dashTime += 1/room_speed;
			}

			if (dashTime >= 2) {
				dashTime = -1;
				hp++;
			}
		
			if (dashTime >= 0) sprite_index = sprAbility;
		
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
		
		if (dashTime >= 0) sprite_index = sprAbility;
		else if speed > 0 {
			sprite_index = sprWalk;
		} else sprite_index = sprIdle;
		
		
	break;
}
