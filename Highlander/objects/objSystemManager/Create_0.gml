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
	placeRecord = ini_read_real("records","placeRecord",0);
	killRecord = ini_read_real("records","killRecord",0);
	killTotal = ini_read_real("records","killTotal",0);
	firstRecord = ini_read_real("records","firstRecord",0);
	legendaryKills = ini_read_real("records","legendaryKills",0); // kills with legendary weapon
ini_close();

//Run
ini_open("savaData.ini");
	primary = ini_read_real("run", "primary",0);
	secundairy = ini_read_real("run", "secundairy" ,0);
	race = ini_read_real("run", "race", 0);
ini_close();

//Unlocks
//ini_open("savaData.ini");
//	bunny = ini_read_real("unlocks", "bunny",false);
//	pig = ini_read_real("unlocks", "pig" ,false);
//	goat = ini_read_real("unlocks", "goat", false);
//	bazooka = ini_read_real("unlocks", "bazooka", false);
//ini_close();


//Counters
place = 100;
kills = 0;
frame = 0;

save_data = ds_map_create();
file_name = "SaveData.sav";


data_set("0", 1); // pig
data_set("1", 1); // goat
data_set("2", 1); // bunny
data_set("3", 0); // bazooka

data_load();





