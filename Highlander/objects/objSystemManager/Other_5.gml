/// @description: Save Settings


//Settings
ini_open("saveData.ini")
	ini_write_real("settings", "audioSetting",audioSetting);
	ini_write_real("settings", "fullscreenSetting",window_get_fullscreen());
ini_close();

//Records
ini_open("saveData.ini")
	ini_write_real("records","placeRecord",objDisplayManager.placeRecord);
	ini_write_real("records","killRecord",objDisplayManager.killRecord);
ini_close();

//Run
ini_open("savaData.ini");
	ini_write_real("run", "primary",primary);
	ini_write_real("run", "secundairy" ,secundairy);
	ini_write_real("run", "race", race);
ini_close();