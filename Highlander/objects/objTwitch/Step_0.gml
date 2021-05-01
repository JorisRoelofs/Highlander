if(room != rmMenu) exit;

if(getTimer > timeTillGet)
{
	getTimer = 0;
	
	get = http_get(host + channel);
    ds_map_find_value(async_load, "result");
	newSize = ds_list_size(dataset);

	show_debug_message("Old size: " + string(oldSize));
	show_debug_message("New size: " + string(newSize));
	
	for(var i = 0; i < ds_list_size(dataset); i++)
	{
		var map = ds_list_find_value(dataset, i);
		if(i >= oldSize && i < newSize) with(instance_create_layer(-32,random_range(ideal_height-160,ideal_height-96),"Entities", objActor))
		{
			name = ds_map_find_value(map, "username");
			show_debug_message("Spawned id: " + string(ds_map_find_value(map, "user_id")) + ", name: " + ds_map_find_value(map, "username") + ", skin: " +  + ds_map_find_value(map, "skin"));
			switch(ds_map_find_value(map, "skin"))
			{
				default: sprite_index = sprChickenWalk; break;
			}
		}
	}

	show_debug_message("playercount: " + string(ds_list_size(dataset)));
	oldSize = newSize;
}
else getTimer += 1/room_speed;
