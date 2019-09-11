/// @description: Save Settings Setup

instance_create_depth(0,0,0,objDebug);
//randomize();

//Setup
scr_singleton();
os_powersave_enable(false);


//Save Settings Setup
ini_open("saveData.ini");
	audioSetting = ini_read_real("settings", "audioSetting",0);
	window_set_fullscreen(ini_read_real("settings", "fullscreenSetting",0));
ini_close();

//Save Records Setup
ini_open("saveData.ini")
	objDisplayManager.placeRecord = ini_read_real("records","placeRecord",100);
	objDisplayManager.killRecord = ini_read_real("records","killRecord",0);
ini_close();


save_data = ds_map_create();
file_name = "SaveData.sav";

//data_set("kills",0);
data_load();


