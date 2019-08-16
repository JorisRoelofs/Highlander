/// @description: Save Settings


ini_open("saveData.ini")
	ini_write_real("settings", "audioSetting",audioSetting);
	ini_write_real("settings", "fullscreenSetting",window_get_fullscreen());
ini_close();