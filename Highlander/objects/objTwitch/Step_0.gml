if(getTimer > timeTillGet)
{
	getTimer = 0;	
	get = http_get(host + channel);
    ds_map_find_value(async_load, "result");

	for(var i = 0; i < ds_list_size(dataset); i++)
	{
		var map = ds_list_find_value(dataset, i);
		show_debug_message("id: " + string(ds_map_find_value(map, "user_id")) + ", name: " + ds_map_find_value(map, "username") + ", skin: " +  + ds_map_find_value(map, "skin"));
	}
	
	show_debug_message("playercount: " + string(ds_list_size(dataset)));
}
else getTimer += 1/room_speed;
