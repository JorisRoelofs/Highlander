if(os_browser == browser_not_a_browser)
{
	instance_destroy();
	exit;
}

timeTillGet = 2;
getTimer = timeTillGet;
dataset = ds_list_create();
oldSize = 0;
host = "https://bunny-royale-api.cvs-gaming.com/queue/";
channel = "123"; //string_replace(string(parameter_string(1)), "channel=", "");
start = noone;

show_debug_message("channel: " + channel);