/// @description: Spawn Enemies
repeat(99) {
	repeat(100) {
		var _dis = 200;
		var _ran_x = random_range(_dis,room_width-_dis);
		var _ran_y = random_range(_dis,room_height-_dis);
	
		if(/*point_distance(_ran_x,_ran_y,objPlayer.x,objPlayer.y) > 300 && */point_distance(_ran_x,_ran_y,objLegendary.x,objLegendary.y) > 100)
		{
			//var _enemy = instance_create_layer(_ran_x,_ran_y , "Entities", objEnemy);
			//	_enemy.race = irandom(3);
			
			scrSpawning(_ran_x,_ran_y,objEnemy,irandom(3));
			
			break;
		}
	}
}