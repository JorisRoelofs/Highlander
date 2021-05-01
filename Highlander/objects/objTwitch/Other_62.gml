var str = "null"
if(ds_map_find_value(async_load, "id") == get && ds_map_find_value(async_load, "status") == false) str = ds_map_find_value(async_load, "result");

ds_list_destroy(dataset);
dataset = ds_map_find_value(json_decode(str), "queue");

show_debug_message(str);