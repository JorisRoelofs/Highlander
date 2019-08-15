//Spawn Enemies
for(var i = 0; i < 99; ++i) {
	
	for(var j = 0; j < 99; ++j)
	{
		var _ran_x = random_range(100,room_width-100);
		var _ran_y = random_range(100,room_height-100);
	
		if(point_distance(_ran_x,_ran_y,objPlayer.x,objPlayer.y) > 200) {
			instance_create_layer(_ran_x,_ran_y , "Entities", objEnemy);
			break;
		}
	}
}