/// @description: Spawn Location & Create Weapon


//Setup
scr_singleton();
scr_BasicCollision_init(100);


//Spawn Location
if(room = rmMenu) {
	x = ideal_width/2;
	y = ideal_height/2;
} else {
	x = room_width/2;
	y = room_height/2;
	
	
	//Create Weapon
	instance_create_layer(x-8,y-48,"Entities",objLegendary);
}


