/// @description: Save Settings Setup


//Object Setup
scr_singleton();


//Save Settings Setup
ini_open("saveData.ini");
	audioSetting = ini_read_real("settings", "audioSetting",0);
	window_set_fullscreen(ini_read_real("settings", "fullscreenSetting",0));
ini_close();

save_data = ds_map_create();
file_name = "SaveData.sav";

//data_set("kills",0);
data_load();