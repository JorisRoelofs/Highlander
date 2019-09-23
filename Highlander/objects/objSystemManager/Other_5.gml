/// @description: Save Settings

//Save Data
if(place < placeRecord) placeRecord = place;
if(kills > killRecord) killRecord = kills;
killTotal = killTotal + kills;

//Settings
ini_open("saveData.ini")
	ini_write_real("settings", "audioSetting",audioSetting);
	ini_write_real("settings", "fullscreenSetting",window_get_fullscreen());
ini_close();

//Records
ini_open("saveData.ini")
	ini_write_real("records","placeRecord",placeRecord); // highest rank
	ini_write_real("records","killRecord",killRecord); // kill streak
	ini_write_real("records","killTotal",killTotal); // total kills
	ini_write_real("records","firstRecord",firstRecord); // number of times being #1
	ini_write_real("records","legendaryKills",legendaryKills); // kills with legendary weapon
ini_close();

//Run
ini_open("savaData.ini");
	ini_write_real("run", "primary",primary);
	ini_write_real("run", "secundairy" ,secundairy);
	ini_write_real("run", "race", race);
ini_close();

////Unlocks
//ini_open("savaData.ini");
//	ini_write_real("unlocks", "bunny",bunny);
//	ini_write_real("unlocks", "pig" ,pig);
//	ini_write_real("unlocks", "goat", goat);
//	ini_write_real("unlocks", "bazooka", bazooka);
//ini_close();

