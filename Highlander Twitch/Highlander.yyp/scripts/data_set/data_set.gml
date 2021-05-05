///@arg key
///@arg value
function data_set(argument0, argument1) {
	with (objSystemManager)
	{	
		ds_map_replace(save_data,argument0,argument1)
	}


}
