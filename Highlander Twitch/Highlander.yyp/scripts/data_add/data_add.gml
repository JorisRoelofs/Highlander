///@arg key
///@arg change
function data_add(argument0, argument1) {
	with (objSystemManager)
	{	
		ds_map_replace(save_data,argument0,save_data[? argument0]+argument1);
	}


}
