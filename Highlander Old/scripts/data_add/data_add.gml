///@arg key
///@arg change
with (objSystemManager)
{	
	ds_map_replace(save_data,argument0,save_data[? argument0]+argument1);
}