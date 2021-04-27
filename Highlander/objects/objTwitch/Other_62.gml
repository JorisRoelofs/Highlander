if ds_map_find_value(async_load, "id") == get
    {
    if ds_map_find_value(async_load, "status") == 0
        {
        r_str = ds_map_find_value(async_load, "result");
        }
    else
        {
        r_str = "null";
        }
    }
	
		
	show_debug_message(r_str);
	var data = json_decode(r_str);
	var list = ds_map_find_value(data, "queue");
	var size = ds_list_size(list);
	for (var n = 0; n < ds_list_size(list); n++;)
   {
   var map = ds_list_find_value(list, n);
      name[n] = ds_map_find_value(map, "username");
/*
var curr = ds_map_find_first(map);
   while (is_string(curr))
      {
	  
      curr = ds_map_find_next(map, curr);
      }*/
   }
	  show_debug_message(name);
	  
	  show_debug_message("channel = " + string(parameter_string(1)));
