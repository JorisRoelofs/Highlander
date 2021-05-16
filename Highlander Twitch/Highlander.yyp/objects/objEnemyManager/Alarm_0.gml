/// @description: Spawn Enemies
if(instance_exists(objTwitch))
{
	with(objTwitch)
	{
		for(var i = 0; i < ds_list_size(dataset); i++)
		{
			var map = ds_list_find_value(dataset, i);
			
			repeat(100)
			{
				var _dis = 200;
				var _ran_x = random_range(_dis,room_width-_dis);
				var _ran_y = random_range(_dis,room_height-_dis);
	
				if(point_distance(_ran_x,_ran_y,objLegendary.x,objLegendary.y) < 400)
				{
					switch(ds_map_find_value(map, "skin"))
					{
						default: race = 0; break;
					}
					
					scrSpawning(_ran_x,_ran_y,objEnemy,race,ds_map_find_value(map, "username"), ds_map_find_value(map, "user_id"));
					
					show_debug_message("Spawned id: " + string(ds_map_find_value(map, "user_id")) + ", name: " + ds_map_find_value(map, "username") + ", skin: " +  + ds_map_find_value(map, "skin"));
					
					break;
				}
			}
		}
	}
}
else repeat(spawnCount) {
	repeat(100) {
		var _dis = 200;
		var _ran_x = random_range(_dis,room_width-_dis);
		var _ran_y = random_range(_dis,room_height-_dis);
	
		if(point_distance(_ran_x,_ran_y,objLegendary.x,objLegendary.y) < 400)
		{
			scrSpawning(_ran_x,_ran_y,objEnemy,irandom(3), "", -1);
			break;
		}
	}
}