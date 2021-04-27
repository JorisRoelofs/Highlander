if(getTimer > timeTillGet)
{
	getTimer = 0;	
	get = http_get("https://bunny-royale-api.cvs-gaming.com/queue/123");

//	show_debug_message(channel);

        r_str = ds_map_find_value(async_load, "result");

//	show_debug_message(r_str);
//	start = http_get(host + "/start_game/" + string(channelId)));
}
else getTimer += 1/room_speed;

/*
if(channel != noone)
{
	
}