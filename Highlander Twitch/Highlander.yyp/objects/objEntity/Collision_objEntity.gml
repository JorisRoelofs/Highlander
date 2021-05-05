/// @description: Physics

if race = 3 {
	if dashTime > 0 {
		
		scr_shake(2, 5, id, x, y);

		
		with (other) {
			
			carryingWeapon = false;
			
			var dir, dis;
			dir = point_direction( other.x, other.y, x, y ); //To figure out which direction the bullet has hit from
			dis = 15; // how far of a knock back you want

			x += lengthdir_x( dis, dir); // horizontal knock back 
			y += lengthdir_y( dis, dir); // vertical knock back
		}
		
	} else scr_BasicCollision();
	
} else {
	scr_BasicCollision();
}