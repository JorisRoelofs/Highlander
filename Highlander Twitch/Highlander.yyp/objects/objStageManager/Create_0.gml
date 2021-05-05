/// @description: Spawn Tiles & Foliage


//Variables
range = 31;
spacing = 32;


//States
switch (room) {
	case rmIsland:
		sprTile = sprWater;
		sprTileOld = sprWaterTile;
		sprCorner = sprWaterCorner;	
		alarm[0] =1;
		
		//Spawn Folliage
		for (var i = instance_number (objFoliage); i < 400; ++i) {
		    if !place_meeting(x,y,objFoliage) and  !place_meeting(x,y,objShrine) and  !place_meeting(x,y,objTree) {
				instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Foliage", objFoliage);
			}
		}

	break;
	case rmVolcano:
		sprTile = sprLava;
		sprTileOld = sprLava;
		sprCorner =  sprLavaCorner;
		alarm[1] = 1;
	break;
	case rmIce:
		sprTile = sprIce;
		sprTileOld = sprWaterTile;
		sprCorner =  sprIceCorner;
		alarm[2] = 1;
	break;
}




