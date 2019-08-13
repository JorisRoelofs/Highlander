with (objSystemManager) {
	
	if (!file_exists(file_name))
		exit;
	
	ds_map_destroy(save_data);
	save_data = ds_map_secure_load(file_name);
	//room_restart();
	
}